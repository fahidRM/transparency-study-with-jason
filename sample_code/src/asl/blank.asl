// Agent blank in project ia_submission

/* Initial beliefs and rules */

cat.
dog.
rabbit.
antelope.

/* Initial goals */

! start_logging_and_start.



/* Plans */

+! start_logging_and_start: true <- jason.init_stag_logger;
									!start.

+!start : true <- .print("hello world.");
					move(-1,-1).
