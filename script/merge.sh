prisma-merge-schema \
  --datasource ./prisma/**/*.prisma \
  --decorators ./prisma/**/*.decorator \
  --outputFile prisma/schema.prisma
