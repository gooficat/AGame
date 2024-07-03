.PHONY: clean All

All:
	@echo "----------Building project:[ AGame - Debug ]----------"
	@"$(MAKE)" -f  "AGame.mk"
clean:
	@echo "----------Cleaning project:[ AGame - Debug ]----------"
	@"$(MAKE)" -f  "AGame.mk" clean
