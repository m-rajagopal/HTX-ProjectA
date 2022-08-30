rover -lz rover -lz /tf/caf/landingzones/caf_solution \
-level level1 \
-var-folder /tf/caf/PrjA-Infra/sandpit \
-env sandpit \
-tfstate htx_PrjA_Infra.tfstate \
-a plan

rover -lz rover -lz /tf/caf/landingzones/caf_solution \
-level level1_infra \
-var-folder /tf/caf/PrjA-Infra/sandpit \
-env sandpit \
-tfstate htx_PrjA_Infra.tfstate \
-a plan