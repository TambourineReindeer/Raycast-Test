module main;

import std.stdio;
import core.runtime;
import derelict.opengl3.gl;
import derelict.glfw3.glfw3;

import octree;
import render;
import voxel;

Renderer rend;

// TODO: Write in native D not C wrapper?
static void error_callback(int error, const char* description)
{
	fputs(description, stderr);
}

static void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
	if(key == GLFW_KEY_ESCAPE && action == GLFW_PRESS)
		glfwSetWindowShouldClose(window, GL_TRUE);
}

void main(string[] args)
{
	// Load GL 1.1
	DerelictGL.load();

	GLFWwindow* window;

	// Reports error event through GLFW C function (prints to stderr)
	glfwSetErrorCallback(error_callback);

	// If GLFW did not successfully initialize
	if(!glfwInit())
		Runtime.terminate();

	window = glfwCreateWindow(640, 480, "Raycast/Voxel Test", null, null);
	// Window or context did not properly initialise
	if(!window)
	{
		glfwTerminate();
		Runtime.terminate();
	}

	glfwMakeContextCurrent(window);
	glfwSwapInterval(1);

	// Load GL 1.2+ now that context is created
	DerelictGL.reload();

	// Set window to close when Escape key is pressed
	glfwSetKeyCallback(window, key_callback);

	//TODO: Move to Renderer?
	while(!glfwWindowShouldClose(window))
	{
		float ratio;
		int width, height;
		Point3D position;
		Voxel voxel;

		glfwGetFramebufferSize(window, &width, &height);
		ratio = width / cast(float) height;

		glViewport(0, 0, width, height);
		// clear and reset to color buffer preset
		glClear(GL_COLOR_BUFFER_BIT);

		glMatrixMode(GL_PROJECTION); // Set to modify projection matrix
		glLoadIdentity(); // Reset to default matrix
		glOrtho(-ratio, ratio, -1.0f, 1.0f, 1.0f, -1.0f); // Projection set to screen size

		glMatrixMode(GL_MODELVIEW); // Set to modify model view matrix
		glLoadIdentity();
		position = new Point3D(0,0,0);
		voxel = new Voxel(1.0f, 1.0f, 1.0f);

		//Begin rendering (should be in quads?)
		glBegin(GL_QUADS);

		rend.glPushMatrix();

		rend.glTranslated(position.x, position.y, position.z);
		rend.glRenderMode(GL_POLYGON_MODE);
		rend.glColor4f(1.0f, 1.0f, 1.0f, 1.0f);

		rend.glNormal3f(0.0f, 0.0f, -1.0f);
		rend.glVertex4f(voxel.length, -voxel.height, -voxel.width); // (x,-y,-z)
		rend.glVertex4f(-voxel.length, -voxel.height, -voxel.width); // (-x,-y,-z)
		rend.glVertex4f(-voxel.length, -voxel.height, voxel.width); // (-x,y,z)
		rend.glVertex4f(voxel.length, -voxel.height, voxel.width); // (x,y,-z)

		rend.glNormal3f(0.0f, 0.0f, 1.0f);
		rend.glVertex4f(-voxel.length, -voxel.height, voxel.width); // (-x,-y,z)
		rend.glVertex4f(voxel.length, -voxel.height, voxel.width); // (x,-y,z)
		rend.glVertex4f(voxel.length, voxel.height, voxel.width); // (x,y,z)
		rend.glVertex4f(-voxel.length, voxel.height, voxel.width); // (-x,y,z)

		rend.glNormal3f(1.0f, 0.0f, 0.0f);
		rend.glVertex4f(voxel.length, -voxel.height, voxel.width); // (x,-y,z)
		rend.glVertex4f(voxel.length, -voxel.height, -voxel.width); // (x,-y,-z)
		rend.glVertex4f(voxel.length, voxel.height, -voxel.width); // (x,y,-z)
		rend.glVertex4f(voxel.length, voxel.height, voxel.width); // (x,y,z)

		rend.glNormal3f(-1.0f, 0.0f, 0.0f);
		rend.glVertex4f(-voxel.length, -voxel.height, -voxel.width); // (-x,-y,-z)
		rend.glVertex4f(-voxel.length, -voxel.height, voxel.width); // (-x,-y,z)
		rend.glVertex4f(-voxel.length, voxel.height, voxel.width); // (-x,y,z)
		rend.glVertex4f(-voxel.length, voxel.height, -voxel.width); // (-x,y,-z)

		rend.glNormal3f(0.0f, -1.0f, 0.0f);
		rend.glVertex4f(-voxel.length, -voxel.height, -voxel.width); // (-x,-y,-z)
		rend.glVertex4f(voxel.length, -voxel.height, -voxel.width); // (x,-y,-z)
		rend.glVertex4f(voxel.length, -voxel.height, voxel.width); // (x,-y,z)
		rend.glVertex4f(-voxel.length, -voxel.height, voxel.width); // (-x,-y,z)

		rend.glNormal3f(0.0f, 1.0f, 0.0f);
		rend.glVertex4f(voxel.length, voxel.height, -voxel.width); // (x,y,-z)
		rend.glVertex4f(-voxel.length, voxel.height, -voxel.width); // (-x,y,-z)
		rend.glVertex4f(-voxel.length, voxel.height, voxel.width); // (-x,y,z)
		rend.glVertex4f(voxel.length, voxel.height, voxel.width); // (x,y,z)

		rend.glPopMatrix();

		//Stop rendering
		glEnd();

		glfwSwapBuffers(window);
		glfwPollEvents();
	}
	glfwDestroyWindow(window);

	glfwTerminate();
}

