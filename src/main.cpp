#include <math.h>

#include <glad/glad.h>
#include <GLFW/glfw3.h>

#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>

#include "shader.hpp"
#include "camera.hpp"
#include "mesh.hpp"
#include "texture.hpp"


GLFWwindow* window;


int main() {
	if (!glfwInit()) {
		return -1;
	}
	window = glfwCreateWindow(640, 480, "", NULL, NULL);
	if (!window) {
		glfwTerminate();
		return -1;
	}
	glfwMakeContextCurrent(window);
	
	if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress)) {
		glfwTerminate();
		return -1;
	}
	
	glViewport(0, 0, 640, 480);
	glClearColor(0.1f, 0.2f, 0.3f, 1.0f);
	glEnable(GL_DEPTH_TEST);
	
	Shader basicShader("shaders/basic.vert", "shaders/basic.frag");
	
	Camera cam(glm::perspective(glm::radians(60.0f), 6.4f/4.8f, 0.1f, 100.0f));
	
	Texture floor_tex("assets/bunker_floor.png");
	
	Mesh testTriangle({
		{{ 0.0f, 0.5f, 0.0f}, {0.5f, 0.0f}},
		{{-0.5f,-0.5f, 0.0f}, {0.0f, 1.0f}},
		{{ 0.5f,-0.5f, 0.0f}, {1.0f, 1.0f}}
	},
	{0, 1, 2});
	
	testTriangle.position.x = 0.5f;
	
	
	cam.position.z = 5.0f;
	
	while(!glfwWindowShouldClose(window)) {
		glfwPollEvents();
		glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
		
		testTriangle.rotation.y += 0.002f;
		
		basicShader.use();
		cam.use(basicShader);
		
		floor_tex.use();
		testTriangle.draw(basicShader);
		
		glfwSwapBuffers(window);
	}
	
	glfwTerminate();
	return 0;
}