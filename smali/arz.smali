.class Larz;
.super Ljava/lang/Object;
.source "WordNoRunDefaultPluginData.java"

# interfaces
.implements Larv;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "\u539f\u6765\u5355\u8bcd\u8fd8\u53ef\u4ee5\u8fd9\u6837\u8bfb"

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x6

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "\u5355\u8bcd\u522b\u8dd1"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Larz;->b()I

    move-result v0

    invoke-static {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->getPluginIdWithType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "com.iflytek.oralgame"

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method
