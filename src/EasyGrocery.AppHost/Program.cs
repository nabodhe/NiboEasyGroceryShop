var builder = DistributedApplication.CreateBuilder(args);

builder.AddProject<Projects.LoyaltyService>("loyaltyservice");

builder.AddProject<Projects.OrderService>("orderservice");

builder.Build().Run();
