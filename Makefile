default:
	docker build -t ml:visao .
	docker run --rm -p 8888:8888 -v `pwd`:"/app" -w "/app" -e JUPYTER_ENABLE_LAB=yes --name visao -it ml:visao bash -c "sh run-jupyter.sh"

enter:
	docker exec -ti machine-learning bash