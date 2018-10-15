.class public Laxj;
.super Ljava/lang/Object;
.source "FileTrafficUtil.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "tiwlan+"

    aput-object v1, v0, v3

    const-string/jumbo v1, "wlan+"

    aput-object v1, v0, v4

    const-string/jumbo v1, "eth+"

    aput-object v1, v0, v5

    const-string/jumbo v1, "ra+"

    aput-object v1, v0, v6

    const-string/jumbo v1, "wlan0+"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "eth0+"

    aput-object v2, v0, v1

    sput-object v0, Laxj;->a:[Ljava/lang/String;

    .line 24
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "ccmni0"

    aput-object v1, v0, v3

    const-string/jumbo v1, "ccmni1"

    aput-object v1, v0, v4

    const-string/jumbo v1, "rmnet0"

    aput-object v1, v0, v5

    const-string/jumbo v1, "rmnet1"

    aput-object v1, v0, v6

    const-string/jumbo v1, "rmnet+"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "pdp+"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "ppp+"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "uwbr+"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "wimax+"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "vsnet+"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "ccmni+"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "usb+"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "rmnet1+"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "rmnet_sdio+"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "rmnet_sdio0+"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "rmnet_sdio1+"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "qmi+"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "wwan0+"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "svnet0+"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "rmnet0+"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "cdma_rmnet+"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "rmnet_usb0+"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "rmnet_usb+"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "bond1+"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "ppp0+"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "clat4+"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "cc2mni0+"

    aput-object v2, v0, v1

    sput-object v0, Laxj;->b:[Ljava/lang/String;

    .line 29
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "ccmni0"

    aput-object v1, v0, v3

    const-string/jumbo v1, "ccmni1"

    aput-object v1, v0, v4

    const-string/jumbo v1, "rmnet0"

    aput-object v1, v0, v5

    const-string/jumbo v1, "rmnet1"

    aput-object v1, v0, v6

    sput-object v0, Laxj;->c:[Ljava/lang/String;

    .line 31
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "rmnet+"

    aput-object v1, v0, v3

    const-string/jumbo v1, "pdp+"

    aput-object v1, v0, v4

    const-string/jumbo v1, "ppp+"

    aput-object v1, v0, v5

    const-string/jumbo v1, "uwbr+"

    aput-object v1, v0, v6

    const-string/jumbo v1, "wimax+"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "vsnet+"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "ccmni+"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "usb+"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "rmnet1+"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "rmnet_sdio+"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "rmnet_sdio0+"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "rmnet_sdio1+"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "qmi+"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "wwan0+"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "svnet0+"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "rmnet0+"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "cdma_rmnet+"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "rmnet_usb0+"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "rmnet_usb+"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "bond1+"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "ppp0+"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "clat4+"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "cc2mni0+"

    aput-object v2, v0, v1

    sput-object v0, Laxj;->d:[Ljava/lang/String;

    .line 35
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "tun+"

    aput-object v1, v0, v3

    const-string/jumbo v1, "tun0+"

    aput-object v1, v0, v4

    sput-object v0, Laxj;->e:[Ljava/lang/String;

    .line 37
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "bnep0+"

    aput-object v1, v0, v3

    const-string/jumbo v1, "bt-pan+"

    aput-object v1, v0, v4

    const-string/jumbo v1, "rndis0+"

    aput-object v1, v0, v5

    sput-object v0, Laxj;->f:[Ljava/lang/String;

    return-void
.end method

.method public static a(I)Laxh;
    .locals 13
    .param p0, "uid"    # I

    .prologue
    const/4 v6, 0x0

    .line 45
    const/4 v2, 0x0

    .line 46
    .local v2, "fstream":Ljava/io/FileReader;
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 48
    .local v9, "uidStr":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string/jumbo v10, "/proc/net/xt_qtaguid/stats"

    invoke-direct {v3, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 73
    .end local v2    # "fstream":Ljava/io/FileReader;
    .local v3, "fstream":Ljava/io/FileReader;
    new-instance v6, Laxh;

    invoke-direct {v6}, Laxh;-><init>()V

    .line 74
    .local v6, "retData":Laxh;
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v10, 0x1f4

    invoke-direct {v4, v3, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 78
    .local v4, "in":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 80
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, "segs":[Ljava/lang/String;
    const/4 v10, 0x3

    aget-object v10, v7, v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 84
    const/4 v10, 0x2

    aget-object v10, v7, v10

    const-string/jumbo v11, "0x0"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 85
    const/4 v10, 0x1

    aget-object v8, v7, v10

    .line 86
    .local v8, "type":Ljava/lang/String;
    invoke-static {v8}, Laxj;->a(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {v8}, Laxj;->b(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 87
    :cond_1
    new-instance v0, Laxh$a;

    invoke-direct {v0}, Laxh$a;-><init>()V

    .line 88
    .local v0, "data":Laxh$a;
    iput-object v8, v0, Laxh$a;->a:Ljava/lang/String;

    .line 89
    const/4 v10, 0x4

    aget-object v10, v7, v10

    iput-object v10, v0, Laxh$a;->b:Ljava/lang/String;

    .line 90
    const/4 v10, 0x5

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-long v10, v10

    iput-wide v10, v0, Laxh$a;->c:J

    .line 91
    const/4 v10, 0x7

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-long v10, v10

    iput-wide v10, v0, Laxh$a;->d:J

    .line 92
    invoke-virtual {v6, v0}, Laxh;->a(Laxh$a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 98
    .end local v0    # "data":Laxh$a;
    .end local v5    # "line":Ljava/lang/String;
    .end local v7    # "segs":[Ljava/lang/String;
    .end local v8    # "type":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v10, "FileStatsTrafficUtil"

    const-string/jumbo v11, ""

    invoke-static {v10, v11, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    const-string/jumbo v10, "FileStatsTrafficUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getTrafficsState(), return= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 104
    .end local v3    # "fstream":Ljava/io/FileReader;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v6    # "retData":Laxh;
    .restart local v2    # "fstream":Ljava/io/FileReader;
    :goto_2
    return-object v6

    .line 49
    :catch_1
    move-exception v1

    .line 50
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v10, "FileStatsTrafficUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Could not read /proc/net/xt_qtaguid/stats, e = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 52
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "FileStatsTrafficUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "new FileReader error! /proc/net/xt_qtaguid/stats, e = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhj;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 97
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "fstream":Ljava/io/FileReader;
    .restart local v3    # "fstream":Ljava/io/FileReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "retData":Laxh;
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 100
    .end local v5    # "line":Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 101
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v10, "FileStatsTrafficUtil"

    const-string/jumbo v11, ""

    invoke-static {v10, v11, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 8
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "ret":Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .local v1, "sBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, "tempStr":Ljava/lang/String;
    sget-object v5, Laxj;->a:[Ljava/lang/String;

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v2, v5, v4

    .line 256
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 257
    const/4 v0, 0x1

    .line 262
    .end local v1    # "sBuilder":Ljava/lang/StringBuilder;
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "tempStr":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "FileStatsTrafficUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isWlan(), type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", ret= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return v0

    .line 255
    .restart local v1    # "sBuilder":Ljava/lang/StringBuilder;
    .restart local v2    # "str":Ljava/lang/String;
    .restart local v3    # "tempStr":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 8
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "ret":Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .local v1, "sBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, "tempStr":Ljava/lang/String;
    sget-object v5, Laxj;->b:[Ljava/lang/String;

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v2, v5, v4

    .line 273
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 274
    const/4 v0, 0x1

    .line 287
    .end local v1    # "sBuilder":Ljava/lang/StringBuilder;
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "tempStr":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "FileStatsTrafficUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isMobile(), type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", ret= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return v0

    .line 272
    .restart local v1    # "sBuilder":Ljava/lang/StringBuilder;
    .restart local v2    # "str":Ljava/lang/String;
    .restart local v3    # "tempStr":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
