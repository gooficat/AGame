#ifndef CAMERA_HPP
#define CAMERA_HPP

#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>

#include "shader.hpp"

class Camera
{
public:
	Camera(glm::mat4 projection);
	void use(Shader& shader);
	~Camera();
	
	glm::mat4 projection, view;
	glm::vec3 position, rotation;
private:
	void updateView();
};

#endif // CAMERA_HPP
