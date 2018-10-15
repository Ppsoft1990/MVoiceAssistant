.class public Lcom/iflytek/greenplug/common/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/iflytek/greenplug/common/utils/FileUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/greenplug/common/utils/FileUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 8
    .param p0, "src"    # Ljava/io/InputStream;
    .param p1, "dst"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    const/4 v1, 0x0

    .line 37
    .local v1, "in":Ljava/io/BufferedInputStream;
    const/4 v3, 0x0

    .line 39
    .local v3, "ou":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .local v2, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 41
    .end local v3    # "ou":Ljava/io/BufferedOutputStream;
    .local v4, "ou":Ljava/io/BufferedOutputStream;
    const/16 v6, 0x2000

    :try_start_2
    new-array v0, v6, [B

    .line 42
    .local v0, "buffer":[B
    const/4 v5, 0x0

    .line 43
    .local v5, "read":I
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 44
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 48
    .end local v0    # "buffer":[B
    .end local v5    # "read":I
    :catchall_0
    move-exception v6

    move-object v3, v4

    .end local v4    # "ou":Ljava/io/BufferedOutputStream;
    .restart local v3    # "ou":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    :goto_1
    if-eqz v1, :cond_0

    .line 50
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 55
    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    .line 57
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 59
    :cond_1
    :goto_3
    throw v6

    .line 46
    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .end local v3    # "ou":Ljava/io/BufferedOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    .restart local v4    # "ou":Ljava/io/BufferedOutputStream;
    .restart local v5    # "read":I
    :cond_2
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 48
    if-eqz v2, :cond_3

    .line 50
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 55
    :cond_3
    :goto_4
    if-eqz v4, :cond_4

    .line 57
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 62
    :cond_4
    :goto_5
    return-void

    .line 51
    :catch_0
    move-exception v6

    goto :goto_4

    .line 58
    :catch_1
    move-exception v6

    goto :goto_5

    .line 51
    .end local v0    # "buffer":[B
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .end local v4    # "ou":Ljava/io/BufferedOutputStream;
    .end local v5    # "read":I
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "ou":Ljava/io/BufferedOutputStream;
    :catch_2
    move-exception v7

    goto :goto_2

    .line 58
    :catch_3
    move-exception v7

    goto :goto_3

    .line 48
    :catchall_1
    move-exception v6

    goto :goto_1

    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v6

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "dst"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/common/utils/FileUtils;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 33
    return-void
.end method

.method public static copySo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkfile"    # Ljava/lang/String;
    .param p2, "nativeLibraryDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    const/16 v18, 0x0

    .line 67
    .local v18, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v19, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 68
    .end local v18    # "zipFile":Ljava/util/zip/ZipFile;
    .local v19, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .line 69
    .local v4, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v9, "libZipEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/zip/ZipEntry;>;"
    new-instance v14, Ljava/util/HashMap;

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-direct {v14, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 71
    .local v14, "soList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 72
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 73
    .local v5, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    .line 74
    .local v10, "name":Ljava/lang/String;
    const-string/jumbo v20, "../"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 75
    sget-object v20, Lcom/iflytek/greenplug/common/utils/FileUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v21, "Path traversal attack prevented"

    invoke-static/range {v20 .. v21}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 134
    .end local v4    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v9    # "libZipEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/zip/ZipEntry;>;"
    .end local v10    # "name":Ljava/lang/String;
    .end local v14    # "soList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v20

    move-object/from16 v18, v19

    .end local v19    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v18    # "zipFile":Ljava/util/zip/ZipFile;
    :goto_1
    if-eqz v18, :cond_1

    .line 136
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 138
    :cond_1
    :goto_2
    throw v20

    .line 78
    .end local v18    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v4    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v5    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v9    # "libZipEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/zip/ZipEntry;>;"
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v14    # "soList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v19    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_2
    :try_start_3
    const-string/jumbo v20, "lib/"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v20

    if-nez v20, :cond_0

    .line 79
    invoke-interface {v9, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    .line 81
    .local v15, "soName":Ljava/lang/String;
    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 82
    .local v7, "fs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v7, :cond_3

    .line 83
    new-instance v7, Ljava/util/TreeSet;

    .end local v7    # "fs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/TreeSet;-><init>()V

    .line 84
    .restart local v7    # "fs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v14, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_3
    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "fs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "name":Ljava/lang/String;
    .end local v15    # "soName":Ljava/lang/String;
    :cond_4
    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_5
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_c

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 91
    .restart local v15    # "soName":Ljava/lang/String;
    sget-object v20, Lcom/iflytek/greenplug/common/utils/FileUtils;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "==========so name="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    .line 93
    .local v17, "soPaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static/range {v17 .. v17}, Lcom/iflytek/greenplug/common/utils/FileUtils;->findSoPath(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v16

    .line 94
    .local v16, "soPath":Ljava/lang/String;
    if-eqz v16, :cond_5

    .line 95
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v6, v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 97
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    :cond_6
    const/4 v8, 0x0

    .line 100
    .local v8, "in":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 102
    .local v11, "ou":Ljava/io/FileOutputStream;
    :try_start_4
    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/zip/ZipEntry;

    invoke-virtual/range {v19 .. v20}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    .line 103
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 104
    .end local v11    # "ou":Ljava/io/FileOutputStream;
    .local v12, "ou":Ljava/io/FileOutputStream;
    const/16 v20, 0x2000

    :try_start_5
    move/from16 v0, v20

    new-array v2, v0, [B

    .line 105
    .local v2, "buf":[B
    const/4 v13, 0x0

    .line 106
    .local v13, "read":I
    :goto_4
    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    move-result v13

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v13, v0, :cond_a

    .line 107
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v12, v2, v0, v13}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    .line 112
    .end local v2    # "buf":[B
    .end local v13    # "read":I
    :catch_0
    move-exception v3

    move-object v11, v12

    .line 113
    .end local v12    # "ou":Ljava/io/FileOutputStream;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v11    # "ou":Ljava/io/FileOutputStream;
    :goto_5
    :try_start_6
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 114
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 116
    :cond_7
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 118
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v20

    :goto_6
    if-eqz v8, :cond_8

    .line 120
    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 124
    :cond_8
    :goto_7
    if-eqz v11, :cond_9

    .line 126
    :try_start_8
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 128
    :cond_9
    :goto_8
    :try_start_9
    throw v20
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 109
    .end local v11    # "ou":Ljava/io/FileOutputStream;
    .restart local v2    # "buf":[B
    .restart local v12    # "ou":Ljava/io/FileOutputStream;
    .restart local v13    # "read":I
    :cond_a
    :try_start_a
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 110
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/FileDescriptor;->sync()V

    .line 111
    sget-object v20, Lcom/iflytek/greenplug/common/utils/FileUtils;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "copy so"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " for "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " ok!"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 118
    if-eqz v8, :cond_b

    .line 120
    :try_start_b
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 124
    :cond_b
    :goto_9
    if-eqz v12, :cond_5

    .line 126
    :try_start_c
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_3

    .line 127
    :catch_1
    move-exception v20

    goto/16 :goto_3

    .line 134
    .end local v2    # "buf":[B
    .end local v6    # "file":Ljava/io/File;
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v12    # "ou":Ljava/io/FileOutputStream;
    .end local v13    # "read":I
    .end local v15    # "soName":Ljava/lang/String;
    .end local v16    # "soPath":Ljava/lang/String;
    .end local v17    # "soPaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_c
    if-eqz v19, :cond_d

    .line 136
    :try_start_d
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 141
    :cond_d
    :goto_a
    return-void

    .line 121
    .restart local v2    # "buf":[B
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "in":Ljava/io/InputStream;
    .restart local v12    # "ou":Ljava/io/FileOutputStream;
    .restart local v13    # "read":I
    .restart local v15    # "soName":Ljava/lang/String;
    .restart local v16    # "soPath":Ljava/lang/String;
    .restart local v17    # "soPaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_2
    move-exception v20

    goto :goto_9

    .end local v2    # "buf":[B
    .end local v12    # "ou":Ljava/io/FileOutputStream;
    .end local v13    # "read":I
    .restart local v11    # "ou":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v21

    goto :goto_7

    .line 127
    :catch_4
    move-exception v21

    goto :goto_8

    .line 137
    .end local v6    # "file":Ljava/io/File;
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v11    # "ou":Ljava/io/FileOutputStream;
    .end local v15    # "soName":Ljava/lang/String;
    .end local v16    # "soPath":Ljava/lang/String;
    .end local v17    # "soPaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_5
    move-exception v20

    goto :goto_a

    .end local v4    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v9    # "libZipEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/zip/ZipEntry;>;"
    .end local v14    # "soList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v19    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v18    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_6
    move-exception v21

    goto/16 :goto_2

    .line 134
    :catchall_2
    move-exception v20

    goto/16 :goto_1

    .line 118
    .end local v18    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v4    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "in":Ljava/io/InputStream;
    .restart local v9    # "libZipEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/zip/ZipEntry;>;"
    .restart local v12    # "ou":Ljava/io/FileOutputStream;
    .restart local v14    # "soList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v15    # "soName":Ljava/lang/String;
    .restart local v16    # "soPath":Ljava/lang/String;
    .restart local v17    # "soPaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "zipFile":Ljava/util/zip/ZipFile;
    :catchall_3
    move-exception v20

    move-object v11, v12

    .end local v12    # "ou":Ljava/io/FileOutputStream;
    .restart local v11    # "ou":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 112
    :catch_7
    move-exception v3

    goto/16 :goto_5
.end method

.method public static deleteDir(Ljava/lang/String;)V
    .locals 1
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 161
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iflytek/greenplug/common/utils/FileUtils;->deleteFile(Ljava/io/File;)V

    .line 162
    return-void
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 165
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 167
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 168
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/iflytek/greenplug/common/utils/FileUtils;->deleteFile(Ljava/io/File;)V

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 172
    return-void
.end method

.method private static findSoPath(Ljava/util/Set;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "soPaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 145
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 146
    .local v0, "soPath":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    .end local v0    # "soPath":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 151
    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 152
    .restart local v0    # "soPath":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 157
    .end local v0    # "soPath":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readFromFile(Ljava/io/File;)[B
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    const/4 v2, 0x0

    .line 192
    .local v2, "fin":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 193
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 194
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .local v3, "fin":Ljava/io/FileInputStream;
    const/16 v6, 0x2000

    :try_start_1
    new-array v0, v6, [B

    .line 195
    .local v0, "buffer":[B
    const/4 v5, 0x0

    .line 196
    .local v5, "read":I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 197
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 203
    .end local v0    # "buffer":[B
    .end local v5    # "read":I
    :catchall_0
    move-exception v6

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :goto_1
    if-eqz v2, :cond_0

    .line 205
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 207
    :cond_0
    :goto_2
    throw v6

    .line 199
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "read":I
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 200
    .local v1, "data":[B
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 203
    if-eqz v3, :cond_2

    .line 205
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 201
    :cond_2
    :goto_3
    return-object v1

    .line 206
    :catch_0
    move-exception v6

    goto :goto_3

    .end local v0    # "buffer":[B
    .end local v1    # "data":[B
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "read":I
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :catch_1
    move-exception v7

    goto :goto_2

    .line 203
    :catchall_1
    move-exception v6

    goto :goto_1
.end method

.method public static writeToFile(Ljava/io/File;[B)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 177
    .local v0, "fou":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .end local v0    # "fou":Ljava/io/FileOutputStream;
    .local v1, "fou":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 180
    if-eqz v1, :cond_0

    .line 182
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 180
    .end local v1    # "fou":Ljava/io/FileOutputStream;
    .restart local v0    # "fou":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    :goto_1
    if-eqz v0, :cond_1

    .line 182
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 184
    :cond_1
    :goto_2
    throw v2

    .line 183
    .end local v0    # "fou":Ljava/io/FileOutputStream;
    .restart local v1    # "fou":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    goto :goto_0

    .end local v1    # "fou":Ljava/io/FileOutputStream;
    .restart local v0    # "fou":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    goto :goto_2

    .line 180
    .end local v0    # "fou":Ljava/io/FileOutputStream;
    .restart local v1    # "fou":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "fou":Ljava/io/FileOutputStream;
    .restart local v0    # "fou":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
