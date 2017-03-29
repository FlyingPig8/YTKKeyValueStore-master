YTKKeyValueStore 改进
==========

YTKKeyValueStore原地址:[YTKKeyValueStore](https://github.com/yuantiku/YTKKeyValueStore)

我自己再增加了一些接口:


	- (void)putModel:(id)model withId:(NSString *)modelId intoTable:(NSString *)tableName;
	
	- (id)getModelById:(NSString *)modelId fromTable:(NSString *)tableName modelClass:(Class)ModelClass;
	
	- (void)putModels:(NSArray *)models withId:(NSString *)modelsId intoTable:(NSString *)tableName;
	
	- (NSArray *)getModelsById:(NSString *)modelsId fromTable:(NSString *)tableName modelClass:(Class)ModelClass;
	
	//--------------------------------------------------------------------------
	
	- (void)putData:(NSData *)data withId:(NSString *)dataId intoTable:(NSString *)tableName;
	
	- (NSData *)getDataById:(NSString *)dataId fromTable:(NSString *)tableName;
	
	- (void)putImage:(UIImage *)image withId:(NSString *)imageId intoTable:(NSString *)tableName;
	
	- (UIImage *)getImageById:(NSString *)imageId fromTable:(NSString *)tableName;
	
	- (void)putDataArr:(NSArray *)dataArr withId:(NSString *)dataArrId intoTable:(NSString *)tableName;
	
	- (NSArray *)getDataArrById:(NSString *)dataArrId fromTable:(NSString *)tableName;
	
	- (void)putImages:(NSArray *)images withId:(NSString *)imagesId intoTable:(NSString *)tableName;
	
	- (NSArray *)getImagesById:(NSString *)imagesId fromTable:(NSString *)tableName;
	
	- (void)dropTable:(NSString *)tableName;
	
	- (void)deleteDatabase:(NSString *)dbName;


