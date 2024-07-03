#include "camera.hpp"

Camera::Camera(glm::mat4 projection) : projection(projection), view(1.0f), position(0.0f), rotation(0.0f)
{
}

void Camera::use(Shader& shader) {
	updateView();
	shader.setMat4("projection", projection);
	shader.setMat4("view", view);
}

void Camera::updateView() {
	view = glm::rotate(glm::mat4(1.0f), rotation.y, glm::vec3(0.0f, 1.0f, 0.0f));
	view = glm::rotate(view, rotation.x, glm::vec3(1.0f, 0.0f, 0.0f));
	view = glm::rotate(view, rotation.z, glm::vec3(0.0f, 0.0f, 1.0f));
	view = glm::translate(view, -position);
}

Camera::~Camera()
{
}

