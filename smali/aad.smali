.class public Laad;
.super Ljava/lang/Object;
.source "PhoneNumTypeDBManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laad$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Landroid/content/Context;


# instance fields
.field private c:Laae;

.field private d:Laae;

.field private e:Lzy;

.field private f:Lzy;

.field private g:Laag;

.field private h:Laag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnj;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/databases"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laad;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    sget-object v0, Laad;->b:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Laag;->a(Landroid/content/Context;Z)Laag;

    move-result-object v0

    iput-object v0, p0, Laad;->g:Laag;

    .line 265
    sget-object v0, Laad;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laag;->a(Landroid/content/Context;Z)Laag;

    move-result-object v0

    iput-object v0, p0, Laad;->h:Laag;

    .line 266
    return-void
.end method

.method synthetic constructor <init>(Laad$1;)V
    .locals 0
    .param p1, "x0"    # Laad$1;

    .prologue
    .line 23
    invoke-direct {p0}, Laad;-><init>()V

    return-void
.end method

.method public static a()Laad;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Laad$a;->a:Laad;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Laad;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Laad;->b:Landroid/content/Context;

    .line 52
    sget-object v0, Laad$a;->a:Laad;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x3

    .line 76
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccPHONENUM_TYPE_VERSION"

    .line 77
    invoke-virtual {v1, v2, v3}, Lil;->b(Ljava/lang/String;I)I

    move-result v0

    .line 78
    .local v0, "version":I
    if-ne v3, v0, :cond_1

    .line 79
    const-string/jumbo v1, "PhoneNumTypeManager"

    const-string/jumbo v2, "phonenum_type database version is null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccPHONENUM_TYPE_VERSION"

    invoke-virtual {v1, v2, v4}, Lil;->a(Ljava/lang/String;I)V

    .line 82
    invoke-static {p0}, Laad;->c(Landroid/content/Context;)V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    if-eq v0, v4, :cond_2

    .line 84
    const-string/jumbo v1, "PhoneNumTypeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "phonenum_type database current version is 3cached version is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccPHONENUM_TYPE_VERSION"

    invoke-virtual {v1, v2, v4}, Lil;->a(Ljava/lang/String;I)V

    .line 88
    invoke-static {p0}, Laad;->c(Landroid/content/Context;)V

    goto :goto_0

    .line 90
    :cond_2
    const-string/jumbo v1, "PhoneNumTypeManager"

    const-string/jumbo v2, "version check is right"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laad;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/phonenum_type.db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    invoke-static {p0}, Laad;->c(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const-string/jumbo v1, "PhoneNumTypeManager"

    const-string/jumbo v2, "unzipDataBase from assets to rom"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laad;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/phonenum_type.db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laad;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/phonenum_type.db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/yd/util/FileManager;->deleteFileFromPath(Ljava/lang/String;)V

    .line 65
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "phonenum_type.zip"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    sget-object v2, Laad;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/iflytek/yd/util/FileManager;->unZipFromAsset(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;
    .locals 3
    .param p1, "num"    # Ljava/lang/String;

    .prologue
    .line 115
    const-string/jumbo v1, "PhoneNumTypeManager"

    const-string/jumbo v2, "start getNumTypeByDB"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "result":Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;
    if-eqz p1, :cond_0

    iget-object v1, p0, Laad;->d:Laae;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Laad;->d:Laae;

    invoke-interface {v1, p1}, Laae;->a(Ljava/lang/String;)Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;

    move-result-object v0

    .line 122
    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Laad;->c:Laae;

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Laad;->c:Laae;

    invoke-interface {v1, p1}, Laae;->a(Ljava/lang/String;)Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;

    move-result-object v0

    .line 126
    :cond_1
    const-string/jumbo v1, "PhoneNumTypeManager"

    const-string/jumbo v2, "end getNumTypeByDB"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-object v0
.end method

.method public a(Ljava/util/List;Z)V
    .locals 2
    .param p2, "isIntoLocalDB"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/call/mark/PhoneNumTypeItem;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 196
    if-eqz p2, :cond_0

    .line 197
    iget-object v0, p0, Laad;->c:Laae;

    invoke-interface {v0, p1}, Laae;->a(Ljava/util/List;)V

    .line 206
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Laad;->d:Laae;

    invoke-interface {v0, p1}, Laae;->a(Ljava/util/List;)V

    goto :goto_0

    .line 203
    :cond_1
    const-string/jumbo v0, "PhoneNumTypeManager"

    const-string/jumbo v1, "insertListToDB list is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Laaf;

    iget-object v1, p0, Laad;->g:Laag;

    invoke-direct {v0, v1}, Laaf;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Laad;->c:Laae;

    .line 100
    new-instance v0, Lzz;

    iget-object v1, p0, Laad;->g:Laag;

    invoke-direct {v0, v1}, Lzz;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Laad;->e:Lzy;

    .line 101
    iget-object v0, p0, Laad;->c:Laae;

    iget-object v1, p0, Laad;->e:Lzy;

    invoke-interface {v0, v1}, Laae;->a(Lzy;)V

    .line 103
    new-instance v0, Laaf;

    iget-object v1, p0, Laad;->h:Laag;

    invoke-direct {v0, v1}, Laaf;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Laad;->d:Laae;

    .line 104
    new-instance v0, Lzz;

    iget-object v1, p0, Laad;->h:Laag;

    invoke-direct {v0, v1}, Lzz;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Laad;->f:Lzy;

    .line 105
    iget-object v0, p0, Laad;->d:Laae;

    iget-object v1, p0, Laad;->f:Lzy;

    invoke-interface {v0, v1}, Laae;->a(Lzy;)V

    .line 106
    return-void
.end method

.method public b(Ljava/util/List;Z)V
    .locals 2
    .param p2, "isIntoLocalDB"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laab;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Laab;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 215
    if-eqz p2, :cond_0

    .line 216
    iget-object v0, p0, Laad;->e:Lzy;

    invoke-interface {v0, p1}, Lzy;->a(Ljava/util/List;)V

    .line 225
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Laad;->f:Lzy;

    invoke-interface {v0, p1}, Lzy;->a(Ljava/util/List;)V

    goto :goto_0

    .line 222
    :cond_1
    const-string/jumbo v0, "PhoneNumTypeManager"

    const-string/jumbo v1, "insertListToDB list is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
