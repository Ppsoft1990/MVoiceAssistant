.class public Lapt;
.super Ljava/lang/Object;
.source "MusicLrcModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapt$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lapt$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lapt;->e:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lapt;
    .locals 4
    .param p0, "lrc"    # Ljava/lang/String;

    .prologue
    .line 26
    new-instance v2, Lapt;

    invoke-direct {v2}, Lapt;-><init>()V

    .line 28
    .local v2, "model":Lapt;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 29
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-static {v1, v2}, Lapt;->a(Ljava/io/InputStream;Lapt;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;Lapt;)V
    .locals 4
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "model"    # Lapt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Ljava/io/InputStreamReader;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v0, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 49
    .local v0, "inr":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 52
    .local v2, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 53
    invoke-static {v1, p1}, Lapt;->a(Ljava/lang/String;Lapt;)V

    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;Lapt;)V
    .locals 21
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "model"    # Lapt;

    .prologue
    .line 64
    const-string/jumbo v19, "[ti:"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 65
    const/16 v19, 0x4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 66
    .local v18, "title":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lapt;->b(Ljava/lang/String;)V

    .line 113
    .end local v18    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    const-string/jumbo v19, "[ar:"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 70
    const/16 v19, 0x4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, "artist":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lapt;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    .end local v5    # "artist":Ljava/lang/String;
    :cond_2
    const-string/jumbo v19, "[al:"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 75
    const/16 v19, 0x4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "album":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lapt;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    .end local v4    # "album":Ljava/lang/String;
    :cond_3
    const-string/jumbo v19, "[by:"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 80
    const/16 v19, 0x4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, "by":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lapt;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    .end local v6    # "by":Ljava/lang/String;
    :cond_4
    const-string/jumbo v16, "\\[(\\d{1,2}:\\d{1,2}\\.\\d{1,2})\\]|\\[(\\d{1,2}:\\d{1,2})\\]"

    .line 87
    .local v16, "reg":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    .line 88
    .local v15, "pattern":Ljava/util/regex/Pattern;
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 90
    .local v14, "matcher":Ljava/util/regex/Matcher;
    const-wide/16 v10, 0x0

    .line 91
    .local v10, "currentTime":J
    const-string/jumbo v8, ""

    .line 92
    .local v8, "currentContent":Ljava/lang/String;
    :goto_1
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 94
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v9

    .line 95
    .local v9, "groupCount":I
    const/4 v12, 0x0

    .local v12, "index":I
    :goto_2
    if-ge v12, v9, :cond_6

    .line 96
    invoke-virtual {v14, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    .line 97
    .local v17, "timeStr":Ljava/lang/String;
    if-nez v12, :cond_5

    .line 99
    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lapt;->f(Ljava/lang/String;)J

    move-result-wide v10

    .line 95
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 103
    .end local v17    # "timeStr":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v7

    .line 104
    .local v7, "content":[Ljava/lang/String;
    if-eqz v7, :cond_7

    array-length v0, v7

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_7

    .line 105
    array-length v0, v7

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    aget-object v8, v7, v19

    .line 107
    :cond_7
    new-instance v13, Lapt$a;

    invoke-direct {v13}, Lapt$a;-><init>()V

    .line 108
    .local v13, "item":Lapt$a;
    iput-wide v10, v13, Lapt$a;->a:J

    .line 109
    iput-object v8, v13, Lapt$a;->b:Ljava/lang/String;

    .line 110
    invoke-virtual/range {p1 .. p1}, Lapt;->e()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static f(Ljava/lang/String;)J
    .locals 9
    .param p0, "timeStr"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 116
    const-string/jumbo v5, "\\:"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "s":[Ljava/lang/String;
    aget-object v5, v2, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 119
    .local v1, "min":I
    const/4 v0, 0x0

    .line 120
    .local v0, "mill":I
    aget-object v5, v2, v7

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 121
    aget-object v5, v2, v7

    const-string/jumbo v6, "\\."

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, "ss":[Ljava/lang/String;
    aget-object v5, v4, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 123
    .local v3, "sec":I
    aget-object v5, v4, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 127
    .end local v4    # "ss":[Ljava/lang/String;
    :goto_0
    mul-int/lit8 v5, v1, 0x3c

    mul-int/lit16 v5, v5, 0x3e8

    mul-int/lit16 v6, v3, 0x3e8

    add-int/2addr v5, v6

    mul-int/lit8 v6, v0, 0xa

    add-int/2addr v5, v6

    int-to-long v6, v5

    return-wide v6

    .line 125
    .end local v3    # "sec":I
    :cond_0
    aget-object v5, v2, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .restart local v3    # "sec":I
    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lapt;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lapt;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTitle"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lapt;->a:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lapt;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "mArtist"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lapt;->b:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lapt;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAlbum"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lapt;->c:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lapt$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lapt;->e:Ljava/util/List;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "mBy"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lapt;->d:Ljava/lang/String;

    .line 161
    return-void
.end method
