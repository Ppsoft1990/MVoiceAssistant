.class Lmv$1;
.super Ljava/lang/Thread;
.source "EarPlugHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmv;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmv;


# direct methods
.method constructor <init>(Lmv;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lmv;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lmv$1;->a:Lmv;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 154
    const/4 v15, 0x0

    invoke-static {v15}, Lcom/iflytek/greenplug/client/GreenPlug;->getAllPackageInfos(I)Ljava/util/List;

    move-result-object v8

    .line 155
    .local v8, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_1

    .line 156
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 157
    .local v7, "info":Landroid/content/pm/PackageInfo;
    const-string/jumbo v16, "com.cmcc.viafly.headset"

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 158
    move-object/from16 v0, p0

    iget-object v15, v0, Lmv$1;->a:Lmv;

    invoke-static {v15}, Lmv;->a(Lmv;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x2

    const/16 v18, 0x2

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    .line 159
    .local v10, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v15, v0, Lmv$1;->a:Lmv;

    invoke-static {v15}, Lmv;->a(Lmv;)Landroid/os/Handler;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 240
    .end local v7    # "info":Landroid/content/pm/PackageInfo;
    .end local v10    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 166
    :cond_1
    const/4 v6, 0x0

    .line 167
    .local v6, "haSDPermission":Z
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x17

    move/from16 v0, v16

    if-lt v15, v0, :cond_3

    .line 168
    move-object/from16 v0, p0

    iget-object v15, v0, Lmv$1;->a:Lmv;

    invoke-static {v15}, Lmv;->b(Lmv;)Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    const-string/jumbo v16, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_2

    const/4 v6, 0x1

    .line 172
    :goto_1
    if-nez v6, :cond_4

    .line 173
    move-object/from16 v0, p0

    iget-object v15, v0, Lmv$1;->a:Lmv;

    invoke-static {v15}, Lmv;->a(Lmv;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    .line 174
    .restart local v10    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v15, v0, Lmv$1;->a:Lmv;

    invoke-static {v15}, Lmv;->a(Lmv;)Landroid/os/Handler;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 168
    .end local v10    # "msg":Landroid/os/Message;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 170
    :cond_3
    const/4 v6, 0x1

    goto :goto_1

    .line 185
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lmv$1;->a:Lmv;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lmv;->a(Lmv;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v15

    const-string/jumbo v16, "gp_plugin_temp"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 189
    .local v3, "dexOutputDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, "dirpathString":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "com.cmcc.viafly.headset"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ".apk"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 191
    .local v12, "pluginFilePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lmv$1;->a:Lmv;

    invoke-static {v15, v12}, Lmv;->a(Lmv;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 193
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    .local v11, "pluginFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 195
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 199
    .end local v11    # "pluginFile":Ljava/io/File;
    :cond_5
    invoke-static {}, Lmv;->a()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "copying mobius plugin file from asset"

    invoke-static/range {v15 .. v16}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string/jumbo v1, "gp_plugin/com.cmcc.viafly.headset.apk"

    .line 204
    .local v1, "asset_path":Ljava/lang/String;
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v12, v1}, Lcom/iflytek/yd/util/FileManager;->copyAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 206
    .local v2, "copyState":Z
    if-nez v2, :cond_6

    .line 207
    invoke-static {}, Lmv;->a()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "copy mobius plugin file from asset fail"

    invoke-static/range {v15 .. v16}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    move-object/from16 v0, p0

    iget-object v15, v0, Lmv$1;->a:Lmv;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lmv;->a(Lmv;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    move-object/from16 v0, p0

    iget-object v15, v0, Lmv$1;->a:Lmv;

    invoke-static {v15}, Lmv;->a(Lmv;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    .line 211
    .restart local v10    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v15, v0, Lmv$1;->a:Lmv;

    invoke-static {v15}, Lmv;->a(Lmv;)Landroid/os/Handler;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 216
    .end local v10    # "msg":Landroid/os/Message;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lmv$1;->a:Lmv;

    invoke-static {v15}, Lmv;->b(Lmv;)Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 218
    .local v13, "pm":Landroid/content/pm/PackageManager;
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmv$1;->a:Lmv;

    invoke-static {v15}, Lmv;->c(Lmv;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    .local v14, "tempCopyFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 220
    move-object/from16 v0, p0

    iget-object v15, v0, Lmv$1;->a:Lmv;

    invoke-static {v15}, Lmv;->c(Lmv;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 221
    .restart local v7    # "info":Landroid/content/pm/PackageInfo;
    if-eqz v7, :cond_7

    const-string/jumbo v15, "com.cmcc.viafly.headset"

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 222
    new-instance v9, Lmu;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmv$1;->a:Lmv;

    invoke-static {v15}, Lmv;->b(Lmv;)Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lmv$1;->a:Lmv;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lmv;->c(Lmv;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v9, v15, v7, v0}, Lmu;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    .line 224
    .local v9, "item":Lmu;
    move-object/from16 v0, p0

    iget-object v15, v0, Lmv$1;->a:Lmv;

    invoke-static {v15, v9}, Lmv;->a(Lmv;Lmu;)V

    .line 231
    .end local v9    # "item":Lmu;
    :goto_2
    :try_start_0
    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 232
    :catch_0
    move-exception v5

    .line 233
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {}, Lmv;->a()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 226
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lmv$1;->a:Lmv;

    invoke-static {v15}, Lmv;->a(Lmv;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x4

    const/16 v18, -0x2

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    .line 227
    .restart local v10    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v15, v0, Lmv$1;->a:Lmv;

    invoke-static {v15}, Lmv;->a(Lmv;)Landroid/os/Handler;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 238
    .end local v7    # "info":Landroid/content/pm/PackageInfo;
    .end local v10    # "msg":Landroid/os/Message;
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lmv$1;->a:Lmv;

    invoke-static {v15}, Lmv;->a(Lmv;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    .line 239
    .restart local v10    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v15, v0, Lmv$1;->a:Lmv;

    invoke-static {v15}, Lmv;->a(Lmv;)Landroid/os/Handler;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
