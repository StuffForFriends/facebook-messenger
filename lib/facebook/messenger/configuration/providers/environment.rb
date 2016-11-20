module Facebook
  module Messenger
    class Configuration
      module Providers
        # Configuration provider for environment variables.
        class Environment
          def valid_verify_token?(verify_token)
            System.out.println('VERIFY TOKEN:')
            System.out.println('     got: ' + verify_token)
            System.out.println('expected: ' + ENV['VERIFY_TOKEN'])
            System.out.println('DONE VERIFY')
            verify_token == ENV['VERIFY_TOKEN']
          end

          def app_secret_for(*)
            ENV['APP_SECRET']
          end

          def access_token_for(*)
            ENV['ACCESS_TOKEN']
          end
        end
      end
    end
  end
end
