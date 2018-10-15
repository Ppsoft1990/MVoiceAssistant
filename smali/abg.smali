.class public Labg;
.super Lvz;
.source "BizConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvz",
        "<",
        "Labh;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lvz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Labh;
    .locals 5
    .param p1, "xmlResult"    # Ljava/lang/String;

    .prologue
    .line 16
    new-instance v1, Labh;

    invoke-direct {v1}, Labh;-><init>()V

    .line 17
    .local v1, "dialSmsBizConfigResult":Labh;
    invoke-static {v1, p1}, Labg;->a(Lwa;Ljava/lang/String;)V

    .line 18
    invoke-static {p1}, Labg;->b(Ljava/lang/String;)Lcom/iflytek/yd/util/xml/XmlElement;

    move-result-object v2

    const-string/jumbo v3, "config_values"

    invoke-virtual {p0, v2, v3}, Labg;->a(Lcom/iflytek/yd/util/xml/XmlElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "config_values":Ljava/lang/String;
    const-string/jumbo v2, "BizConfigParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "filter(), config_values="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual {v1, v0}, Labh;->a(Ljava/lang/String;)V

    .line 22
    return-object v1
.end method
