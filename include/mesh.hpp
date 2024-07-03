#ifndef MESH_HPP
#define MESH_HPP
#include <glad/glad.h>
#include <string>
#include <vector>

#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>


#include "shader.hpp"

struct Vertex {
	glm::vec3 position;
	glm::vec2 UV;
}; 

class Mesh
{
public:
	std::vector<Vertex> vertices;
	glm::mat4 matrix;
	glm::vec3 position, rotation;
	Mesh(std::vector<Vertex> vertices, std::vector<unsigned int> indices);
	void draw(Shader& shader);
	~Mesh();
private:
	void updateMatrix();
	GLuint VAO, VBO, EBO;
	size_t indexCount;
};

#endif // MESH_HPP
