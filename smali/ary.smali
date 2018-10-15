.class Lary;
.super Ljava/lang/Object;
.source "SpokeEvaluateDefaultPluginData.java"

# interfaces
.implements Larv;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "\u820c\u5c16\u4e0a\u7684\u6e38\u620f\uff0c\u6311\u6218\u8bc6\u5b57\u6781\u9650"

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x2

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "\u8bfb\u4f60\u59b9"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lary;->b()I

    move-result v0

    invoke-static {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->getPluginIdWithType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string/jumbo v0, "com.iflytek.cmcc"

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method
