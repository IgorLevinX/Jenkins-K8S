FROM mcr.microsoft.com/dotnet/sdk as build
COPY ./src ./src
WORKDIR /src
RUN dotnet build -o /app && dotnet publish -o /publish
 
FROM mcr.microsoft.com/dotnet/aspnet as base
COPY --from=build  /publish /app
WORKDIR /app
EXPOSE 8080
CMD ["./WebApp"]