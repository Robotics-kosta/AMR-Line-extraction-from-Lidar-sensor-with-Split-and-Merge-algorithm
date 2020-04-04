### The main goal of this project is to understand copncepts of Robot Operating System.

Node **Merenja.py** reads the data from the **csv** file and publishes minimum,maximum and average temperature to the topic. Node **Obrada.py** subscribes to that topic, recives the data and processes it, after processing it publishes average temperature on the **'prikaz'** topic which **Prikaz.py** plots. **Obrada.py** also publishes boolean, which is true if the max-min temperature is greater than the threshold, to the topic **'akcija'**. Node **Akcija.py** subscribes to the topic **'akcija'** and increases counter if boolean is true.
You can also run the **write_to_file_client.py** to start the communication with the server, which allows you to write the data to the file.
