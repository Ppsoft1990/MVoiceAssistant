.class public Laar;
.super Ljava/lang/Object;
.source "ChinaUnicomSmsParamImpl.java"

# interfaces
.implements Laat;


# static fields
.field private static a:Laar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Laar;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Laar;->a:Laar;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Laar;

    invoke-direct {v0}, Laar;-><init>()V

    sput-object v0, Laar;->a:Laar;

    .line 20
    :cond_0
    sget-object v0, Laar;->a:Laar;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v0, "addressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-object v0
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    const-string/jumbo v0, "10010"

    invoke-direct {p0, v0}, Laar;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "102"

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    const-string/jumbo v0, "10010"

    invoke-direct {p0, v0}, Laar;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string/jumbo v0, "105"

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    const-string/jumbo v0, "10010"

    invoke-direct {p0, v0}, Laar;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "1071"

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string/jumbo v0, "10010"

    return-object v0
.end method

.method public i()Lcom/iflytek/yd/system/SimType;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/iflytek/yd/system/SimType;->China_Unicom:Lcom/iflytek/yd/system/SimType;

    return-object v0
.end method
