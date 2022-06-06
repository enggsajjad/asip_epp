int main() {
	char* tempString = "Hallo\0             ";
	print("Hallo Welt\n");
	AssemblerMethod();
	print("Finished\n");
	print(strcat(tempString, " Welt"));
	return 0;
}
