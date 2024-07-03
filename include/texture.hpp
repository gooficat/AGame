#ifndef TEXTURE_HPP
#define TEXTURE_HPP

#include <glad/glad.h>

#include <stb_image.h>

class Texture
{
public:
	GLuint ID;
	Texture(const char* path);
	void use();
	~Texture();

};

#endif // TEXTURE_HPP
