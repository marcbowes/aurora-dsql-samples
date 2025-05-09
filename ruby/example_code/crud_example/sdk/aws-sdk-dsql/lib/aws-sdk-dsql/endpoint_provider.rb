# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DSQL
  class EndpointProvider
    def resolve_endpoint(parameters)
      use_fips = parameters.use_fips
      endpoint = parameters.endpoint
      region = parameters.region
      if Aws::Endpoints::Matchers.set?(endpoint)
        if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true)
          raise ArgumentError, "Invalid Configuration: FIPS and custom endpoint are not supported"
        end
        return Aws::Endpoints::Endpoint.new(url: endpoint, headers: {}, properties: {})
      end
      if Aws::Endpoints::Matchers.set?(region)
        if (partition_result = Aws::Endpoints::Matchers.aws_partition(region))
          if Aws::Endpoints::Matchers.boolean_equals?(use_fips, true)
            return Aws::Endpoints::Endpoint.new(url: "https://dsql-fips.#{region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
          end
          return Aws::Endpoints::Endpoint.new(url: "https://dsql.#{region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
        end
      end
      raise ArgumentError, "Invalid Configuration: Missing Region"
      raise ArgumentError, 'No endpoint could be resolved'

    end
  end
end
