This tests asserts that root tasks can depend on workspace#task
  $ . ${TESTDIR}/../../../helpers/setup_integration_test.sh task_dependencies/root-to-workspace

  $ ${TURBO} run mytask
  \xe2\x80\xa2 Packages in scope: //, lib-a (esc)
  \xe2\x80\xa2 Running mytask in 2 packages (esc)
  \xe2\x80\xa2 Remote caching disabled (esc)
  lib-a:build: cache miss, executing 18f658ca64fa503f
  lib-a:build: 
  lib-a:build: > build
  lib-a:build: > echo build-lib-a
  lib-a:build: 
  lib-a:build: build-lib-a
  //:mytask: cache miss, executing bb122116ed831608
  //:mytask: 
  //:mytask: > mytask
  //:mytask: > echo root-mytask
  //:mytask: 
  //:mytask: root-mytask
  
   Tasks:    2 successful, 2 total
  Cached:    0 cached, 2 total
    Time:\s*[\.0-9ms]+  (re)
  