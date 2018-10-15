.class public Lank;
.super Ljava/lang/Object;
.source "ListeningAudioCacheHelper.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static e:Ljava/lang/Object;

.field private static f:Lank;


# instance fields
.field private d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lnk;->a:Ljava/lang/String;

    sput-object v0, Lank;->a:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lank;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "listening/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "audio_cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lank;->b:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lank;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "listening/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "record_cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lank;->c:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lank;->e:Ljava/lang/Object;

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lank;->f:Lank;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lank;->d:[B

    .line 33
    return-void
.end method

.method public static a()Lank;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lank;->f:Lank;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Lank;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lank;->f:Lank;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lank;

    invoke-direct {v0}, Lank;-><init>()V

    sput-object v0, Lank;->f:Lank;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lank;->f:Lank;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private e(I)Ljava/lang/String;
    .locals 2
    .param p1, "audioId"    # I

    .prologue
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lank;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f(I)Ljava/lang/String;
    .locals 2
    .param p1, "audioId"    # I

    .prologue
    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lank;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)J
    .locals 30
    .param p1, "audioId"    # I

    .prologue
    .line 97
    const-wide/16 v20, -0x1

    .line 98
    .local v20, "ret":J
    sget-object v25, Lank;->e:Ljava/lang/Object;

    monitor-enter v25

    .line 99
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lank;->d:[B

    move-object/from16 v24, v0

    if-eqz v24, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lank;->d:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    if-lez v24, :cond_6

    .line 100
    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v24, Lank;->b:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .local v19, "path":Ljava/lang/StringBuilder;
    const-string/jumbo v24, "ListeningAudioCacheHelper"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "saveCreateAudio path is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v7, Ljava/io/File;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v7, "dir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_0

    .line 104
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 106
    :cond_0
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v26, ".mp3"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    new-instance v10, Ljava/io/File;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 109
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :cond_1
    const/4 v11, 0x0

    .line 113
    .local v11, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    .line 115
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .local v12, "fos":Ljava/io/FileOutputStream;
    const/16 v24, 0x1

    const/16 v26, 0x3e80

    const/16 v27, 0x40

    const v28, 0xc800

    const/16 v29, 0x5

    :try_start_2
    move/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-static {v0, v1, v2, v3, v4}, Lcom/iflytek/viafly/listening/Mp3Encoder;->init(IIIII)I

    .line 117
    invoke-static {}, Lcom/iflytek/viafly/listening/Mp3Encoder;->getMP3BufferSize()I

    move-result v18

    .line 118
    .local v18, "mp3Size":I
    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 120
    .local v17, "mp3Buffer":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lank;->d:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v23, v0

    .line 121
    .local v23, "totalSize":I
    const v24, 0xc800

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 123
    .local v22, "tempBuf":[B
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    const v24, 0xc800

    mul-int v24, v24, v13

    move/from16 v0, v24

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 124
    const-string/jumbo v24, "ListeningAudioCacheHelper"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "i * AUDIO_BUFFER_SIZE "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const v27, 0xc800

    mul-int v27, v27, v13

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string/jumbo v24, "ListeningAudioCacheHelper"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "write buffer "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    add-int/lit8 v24, v13, 0x1

    const v26, 0xc800

    mul-int v24, v24, v26

    move/from16 v0, v24

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    const v6, 0xc800

    .line 127
    .local v6, "copyLength":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lank;->d:[B

    move-object/from16 v24, v0

    const v26, 0xc800

    mul-int v26, v26, v13

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    move-object/from16 v2, v22

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Lank;->a([BI)[S

    move-result-object v14

    .line 130
    .local v14, "left":[S
    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [S

    move-object/from16 v24, v0

    array-length v0, v14

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v26

    move-object/from16 v2, v17

    invoke-static {v14, v0, v1, v2}, Lcom/iflytek/viafly/listening/Mp3Encoder;->encodeBuffer([S[SI[B)I

    move-result v16

    .line 131
    .local v16, "len":I
    const-string/jumbo v24, "ListeningAudioCacheHelper"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, " len "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    if-lez v16, :cond_3

    .line 133
    const/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v16

    invoke-virtual {v12, v0, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 123
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 126
    .end local v6    # "copyLength":I
    .end local v14    # "left":[S
    .end local v16    # "len":I
    :cond_2
    const v24, 0xc800

    mul-int v24, v24, v13

    sub-int v6, v23, v24

    goto :goto_1

    .line 135
    .restart local v6    # "copyLength":I
    .restart local v14    # "left":[S
    .restart local v16    # "len":I
    :cond_3
    const-string/jumbo v24, "ListeningAudioCacheHelper"

    const-string/jumbo v26, "saveCreateAudio len is error"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .end local v6    # "copyLength":I
    .end local v14    # "left":[S
    .end local v16    # "len":I
    :cond_4
    const-string/jumbo v24, "ListeningAudioCacheHelper"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "totalSize "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static/range {v17 .. v17}, Lcom/iflytek/viafly/listening/Mp3Encoder;->encodeFlush([B)I

    move-result v15

    .line 141
    .local v15, "leftData":I
    const-string/jumbo v24, "ListeningAudioCacheHelper"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "leftData "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    if-lez v15, :cond_5

    .line 143
    const/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1, v15}, Ljava/io/FileOutputStream;->write([BII)V

    .line 146
    :cond_5
    invoke-static {}, Lcom/iflytek/viafly/listening/Mp3Encoder;->unInit()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 154
    if-eqz v12, :cond_6

    .line 155
    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 162
    .end local v7    # "dir":Ljava/io/File;
    .end local v10    # "file":Ljava/io/File;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v13    # "i":I
    .end local v15    # "leftData":I
    .end local v17    # "mp3Buffer":[B
    .end local v18    # "mp3Size":I
    .end local v19    # "path":Ljava/lang/StringBuilder;
    .end local v22    # "tempBuf":[B
    .end local v23    # "totalSize":I
    :cond_6
    :goto_2
    :try_start_4
    monitor-exit v25
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 163
    const-string/jumbo v24, "ListeningAudioCacheHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "saveCreateAudio(), ret="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-wide v20

    .line 157
    .restart local v7    # "dir":Ljava/io/File;
    .restart local v10    # "file":Ljava/io/File;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "i":I
    .restart local v15    # "leftData":I
    .restart local v17    # "mp3Buffer":[B
    .restart local v18    # "mp3Size":I
    .restart local v19    # "path":Ljava/lang/StringBuilder;
    .restart local v22    # "tempBuf":[B
    .restart local v23    # "totalSize":I
    :catch_0
    move-exception v9

    .line 158
    .local v9, "e2":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v24, "ListeningAudioCacheHelper"

    const-string/jumbo v26, "encode close fail"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1, v9}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 162
    .end local v7    # "dir":Ljava/io/File;
    .end local v9    # "e2":Ljava/lang/Exception;
    .end local v10    # "file":Ljava/io/File;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v13    # "i":I
    .end local v15    # "leftData":I
    .end local v17    # "mp3Buffer":[B
    .end local v18    # "mp3Size":I
    .end local v19    # "path":Ljava/lang/StringBuilder;
    .end local v22    # "tempBuf":[B
    .end local v23    # "totalSize":I
    :catchall_0
    move-exception v24

    monitor-exit v25
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v24

    .line 150
    .restart local v7    # "dir":Ljava/io/File;
    .restart local v10    # "file":Ljava/io/File;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v19    # "path":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v8

    .line 151
    .local v8, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    const-string/jumbo v24, "ListeningAudioCacheHelper"

    const-string/jumbo v26, "saveCreateAudio()"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1, v8}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 154
    if-eqz v11, :cond_6

    .line 155
    :try_start_7
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 157
    :catch_2
    move-exception v9

    .line 158
    .restart local v9    # "e2":Ljava/lang/Exception;
    :try_start_8
    const-string/jumbo v24, "ListeningAudioCacheHelper"

    const-string/jumbo v26, "encode close fail"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1, v9}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 153
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "e2":Ljava/lang/Exception;
    :catchall_1
    move-exception v24

    .line 154
    :goto_4
    if-eqz v11, :cond_7

    .line 155
    :try_start_9
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 159
    :cond_7
    :goto_5
    :try_start_a
    throw v24

    .line 157
    :catch_3
    move-exception v9

    .line 158
    .restart local v9    # "e2":Ljava/lang/Exception;
    const-string/jumbo v26, "ListeningAudioCacheHelper"

    const-string/jumbo v27, "encode close fail"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v9}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5

    .line 153
    .end local v9    # "e2":Ljava/lang/Exception;
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v24

    move-object v11, v12

    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 150
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v8

    move-object v11, v12

    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3
.end method

.method public a([B)J
    .locals 10
    .param p1, "data"    # [B

    .prologue
    .line 54
    const-wide/16 v2, -0x1

    .line 55
    .local v2, "ret":J
    sget-object v6, Lank;->e:Ljava/lang/Object;

    monitor-enter v6

    .line 57
    if-eqz p1, :cond_0

    :try_start_0
    array-length v5, p1

    if-lez v5, :cond_0

    .line 58
    iget-object v5, p0, Lank;->d:[B

    if-nez v5, :cond_1

    .line 59
    array-length v5, p1

    new-array v5, v5, [B

    iput-object v5, p0, Lank;->d:[B

    .line 60
    const/4 v5, 0x0

    iget-object v7, p0, Lank;->d:[B

    const/4 v8, 0x0

    array-length v9, p1

    invoke-static {p1, v5, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    :goto_0
    iget-object v5, p0, Lank;->d:[B

    array-length v5, v5

    int-to-long v2, v5

    .line 68
    const-string/jumbo v5, "ListeningAudioCacheHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "AudioCache size\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_0
    :goto_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    return-wide v2

    .line 62
    :cond_1
    :try_start_2
    iget-object v5, p0, Lank;->d:[B

    array-length v5, v5

    array-length v7, p1

    add-int/2addr v5, v7

    new-array v4, v5, [B

    .line 63
    .local v4, "temp":[B
    iget-object v5, p0, Lank;->d:[B

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lank;->d:[B

    array-length v9, v9

    invoke-static {v5, v7, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    const/4 v5, 0x0

    iget-object v7, p0, Lank;->d:[B

    array-length v7, v7

    array-length v8, p1

    invoke-static {p1, v5, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iput-object v4, p0, Lank;->d:[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 70
    .end local v4    # "temp":[B
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v5, "ListeningAudioCacheHelper"

    const-string/jumbo v7, "appendAudioCach() error"

    invoke-static {v5, v7, v0}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 76
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 72
    :catch_1
    move-exception v1

    .line 73
    .local v1, "error":Ljava/lang/OutOfMemoryError;
    :try_start_4
    const-string/jumbo v5, "ListeningAudioCacheHelper"

    const-string/jumbo v7, "appendAudioCach() error outOfMemoryError"

    invoke-static {v5, v7, v1}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    const/4 v5, 0x0

    iput-object v5, p0, Lank;->d:[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public a(Ljava/io/File;)Z
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 287
    if-eqz p1, :cond_0

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "tmpPath":Ljava/lang/String;
    const-string/jumbo v2, "ListeningAudioCacheHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteFileSafely  tmpPath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    .local v0, "tmp":Ljava/io/File;
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 292
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    .line 294
    .end local v0    # "tmp":Ljava/io/File;
    .end local v1    # "tmpPath":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public a([BI)[S
    .locals 9
    .param p1, "in"    # [B
    .param p2, "len"    # I

    .prologue
    .line 169
    div-int/lit8 v3, p2, 0x2

    .line 170
    .local v3, "retLen":I
    new-array v2, v3, [S

    .line 171
    .local v2, "out":[S
    const/4 v1, 0x0

    .line 172
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 173
    shl-int/lit8 v1, v0, 0x1

    .line 174
    aget-byte v7, p1, v1

    and-int/lit16 v5, v7, 0xff

    .line 175
    .local v5, "v1":I
    add-int/lit8 v7, v1, 0x1

    aget-byte v7, p1, v7

    shl-int/lit8 v7, v7, 0x8

    const v8, 0xff00

    and-int v6, v7, v8

    .line 176
    .local v6, "v2":I
    int-to-short v7, v6

    int-to-short v8, v5

    or-int/2addr v7, v8

    int-to-short v4, v7

    .line 178
    .local v4, "v":S
    aput-short v4, v2, v0

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    .end local v4    # "v":S
    .end local v5    # "v1":I
    .end local v6    # "v2":I
    :cond_0
    return-object v2
.end method

.method public b()V
    .locals 2

    .prologue
    .line 84
    const-string/jumbo v0, "ListeningAudioCacheHelper"

    const-string/jumbo v1, "clearAudioCach()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lank;->d:[B

    .line 86
    return-void
.end method

.method public b(I)Z
    .locals 6
    .param p1, "audioId"    # I

    .prologue
    .line 188
    const/4 v1, 0x1

    .line 189
    .local v1, "ret":Z
    sget-object v3, Lank;->e:Ljava/lang/Object;

    monitor-enter v3

    .line 190
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lank;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 192
    const-string/jumbo v2, "ListeningAudioCacheHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hasAudio(), return="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    monitor-exit v3

    .line 194
    return v1

    .line 193
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public c()V
    .locals 7

    .prologue
    .line 236
    const-string/jumbo v3, "ListeningAudioCacheHelper"

    const-string/jumbo v4, "clearAllAudio"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance v1, Ljava/io/File;

    sget-object v3, Lank;->b:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    .local v1, "file":Ljava/io/File;
    sget-object v4, Lank;->e:Ljava/lang/Object;

    monitor-enter v4

    .line 239
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 241
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 242
    .local v0, "childFiles":[Ljava/io/File;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-nez v3, :cond_1

    .line 243
    :cond_0
    invoke-virtual {p0, v1}, Lank;->a(Ljava/io/File;)Z

    .line 244
    monitor-exit v4

    .line 255
    .end local v0    # "childFiles":[Ljava/io/File;
    :goto_0
    return-void

    .line 246
    .restart local v0    # "childFiles":[Ljava/io/File;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 247
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 248
    const-string/jumbo v3, "ListeningAudioCacheHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteFileSafely"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lank;->a(Ljava/io/File;)Z

    .line 246
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 253
    .end local v0    # "childFiles":[Ljava/io/File;
    .end local v2    # "i":I
    :cond_3
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public c(I)Z
    .locals 6
    .param p1, "audioId"    # I

    .prologue
    .line 198
    const/4 v1, 0x1

    .line 199
    .local v1, "ret":Z
    sget-object v3, Lank;->e:Ljava/lang/Object;

    monitor-enter v3

    .line 200
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lank;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 202
    const-string/jumbo v2, "ListeningAudioCacheHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hasRecord(), return="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    monitor-exit v3

    .line 204
    return v1

    .line 203
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public d(I)Ljava/lang/String;
    .locals 4
    .param p1, "audioId"    # I

    .prologue
    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lank;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    invoke-direct {p0, p1}, Lank;->e(I)Ljava/lang/String;

    move-result-object v0

    .line 304
    :cond_0
    :goto_0
    const-string/jumbo v1, "ListeningAudioCacheHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAudioPath(), id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-object v0

    .line 301
    :cond_1
    invoke-virtual {p0, p1}, Lank;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    invoke-direct {p0, p1}, Lank;->f(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public d()V
    .locals 7

    .prologue
    .line 260
    const-string/jumbo v3, "ListeningAudioCacheHelper"

    const-string/jumbo v4, "clearAllRecord"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v1, Ljava/io/File;

    sget-object v3, Lank;->c:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    .local v1, "file":Ljava/io/File;
    sget-object v4, Lank;->e:Ljava/lang/Object;

    monitor-enter v4

    .line 263
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 265
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 266
    .local v0, "childFiles":[Ljava/io/File;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-nez v3, :cond_1

    .line 267
    :cond_0
    invoke-virtual {p0, v1}, Lank;->a(Ljava/io/File;)Z

    .line 268
    monitor-exit v4

    .line 279
    .end local v0    # "childFiles":[Ljava/io/File;
    :goto_0
    return-void

    .line 270
    .restart local v0    # "childFiles":[Ljava/io/File;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 271
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 272
    const-string/jumbo v3, "ListeningAudioCacheHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteFileSafely"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lank;->a(Ljava/io/File;)Z

    .line 270
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 277
    .end local v0    # "childFiles":[Ljava/io/File;
    .end local v2    # "i":I
    :cond_3
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
