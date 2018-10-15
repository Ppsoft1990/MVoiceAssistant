.class public Lakk;
.super Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;
.source "HomeCardColumns_Ver1.java"

# interfaces
.implements Lcom/iflytek/viafly/schedule/framework/data/IDatabaseUpgradeHandler;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:I

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;

.field public static q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "viafly_home_card.db"

    sput-object v0, Lakk;->a:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "viafly_home_card"

    sput-object v0, Lakk;->b:Ljava/lang/String;

    .line 20
    const/4 v0, 0x1

    sput v0, Lakk;->c:I

    .line 22
    const-string/jumbo v0, "onlykey"

    sput-object v0, Lakk;->d:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "groupid"

    sput-object v0, Lakk;->e:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "groupname"

    sput-object v0, Lakk;->f:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "contentid"

    sput-object v0, Lakk;->g:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "contentname"

    sput-object v0, Lakk;->h:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "cardtype"

    sput-object v0, Lakk;->i:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "state"

    sput-object v0, Lakk;->j:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "data"

    sput-object v0, Lakk;->k:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "version"

    sput-object v0, Lakk;->l:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "extraint"

    sput-object v0, Lakk;->m:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "extraone"

    sput-object v0, Lakk;->n:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "extratwo"

    sput-object v0, Lakk;->o:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "contentorder"

    sput-object v0, Lakk;->p:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "groupstate"

    sput-object v0, Lakk;->q:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public convertDataToMap(Landroid/database/Cursor;)Ljava/util/List;
    .locals 1
    .param p1, "cusor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public onUpgrade(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "databaseMap":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    return-void
.end method
