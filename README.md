# Transparency Study using Jason & nJason

This repository is a basic setup to get started with a modified jason & n-jason environment.


## Getting Started

- Download `stag.jar` along with the the respective jason jar file for your project. i.e.`jason-2.6.2-mod.jar` for `jason 2.6.2` and `nJason-mod.jar` for `nJason`.
- Configure your computer to make use of the modified jar file. This is performed by first exiting eclipse if it's running then clicking on the `jar` file (i.e. `jason-2.6.2-mod.jar`)
  and then saving config by clicking on the `Save configuration and exit button`.
- Include `stag.jar` and the respective `jason-xxxx-mod.jar` files as dependencies in your project.
- This codebase was intended to be used along with the transparency tool (see: https://github.com/fahidRM/agent-transparency-tool).
- Firstly, launch and start the transparency tool then run your MAS.
- This repository also contains a sample code that can be run out of the box


## Using the Transparency tool with your own project

- After updating your project's dependedncy to include the jar files
- Edit your `mas2j` file to make use of the contained `AgArch` as shown below;
    
      Supposing your mas2j file looks like this...
      
      agents:
		    blank [ capacity =3, scan_range=3];
      
      
      Edit it to be...
      
        agents:
		       blank [ capacity =3, scan_range=3] agentArchClass  SomewhatTransparentAgents.JASON.STAgArch;
           
 - After doing this, edit your Agent's `asl` file to call on the `jason.init_stag_logger` internal action which ensures logs are complete.
 
      
      
      Supposing your asl file looks like this...

          ....[code]
          !start.

          +!start : true <- .print("hello world.");
					                   move(-1,-1).

          ...[code]

      Edit it to be...
      
        ....[code]
          ! start_logging_and_start.
          +! start_logging_and_start: true <- jason.init_stag_logger;
                                              !start.

          +!start : true <- .print("hello world.");
                            move(-1,-1).

          ...[code]

- Launch and start the transparency tool (see: https://github.com/fahidRM/agent-transparency-tool).
- Run your project as you normally would.

- A sample video demonstrating the setup is available here:  https://fahidrm.github.io/agent-transparency-tool/files/guides/agent_transparency_tool_with_jason.mp4




__NOTE: Please note this repository contains modified versions of `jason`and `nJason` libraries that are necessary for capturing the required logs.__


									
