library(tm)
library(SnowballC)

qc <- questionCodes
corpus = Corpus(VectorSource(qc$questionCodes))

corpus = tm_map(corpus, tolower)

corpus = tm_map(corpus, PlainTextDocument)

corpus = tm_map(corpus, removePunctuation)

corpus = tm_map(corpus, stemDocument)


# Create matrix

frequencies = DocumentTermMatrix(corpus)

# Look at matrix 

inspect(frequencies[1000:1005,505:515])

# Check for sparsity

findFreqTerms(frequencies)


sparse <- as.data.frame(as.matrix(findFreqTerms(frequencies)))


# Write to a file, suppress row names
write.csv(sparse, "questionCode_names_processed.csv", row.names=FALSE)

a <- available.packages()
head(rownames(a), 3)

search()
find.package("devtools")
install.packages("devtools")
library(devtools)
find_rtools()

install.packages("KernSmooth")

?Reduce
?paste
?sapply
?print
?class
?grep
?tolower
?ifelse
?c
