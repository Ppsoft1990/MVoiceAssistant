.class public Lase;
.super Ljava/lang/Object;
.source "UniformPluginInfo.java"


# instance fields
.field private a:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

.field private b:Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

.field private c:Larv;

.field private d:Z


# direct methods
.method public constructor <init>(Larv;)V
    .locals 1
    .param p1, "data"    # Larv;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lase;->c:Larv;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lase;->d:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;)V
    .locals 1
    .param p1, "installedPlugin"    # Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lase;->b:Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lase;->d:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;)V
    .locals 1
    .param p1, "netPluginInfo"    # Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lase;->a:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lase;->d:Z

    .line 32
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 45
    iget-object v0, p0, Lase;->a:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lase;->a:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getDesc()Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    .line 47
    :cond_0
    iget-object v0, p0, Lase;->b:Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lase;->b:Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    invoke-interface {v0}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginType()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 50
    invoke-static {v1}, Lasa;->f(I)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 51
    const-string/jumbo v0, "\u820c\u5c16\u4e0a\u7684\u6e38\u620f\uff0c\u6311\u6218\u8bc6\u5b57\u6781\u9650"

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lase;->b:Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    invoke-interface {v0}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginType()I

    move-result v0

    invoke-static {v0}, Lasa;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_2
    iget-object v0, p0, Lase;->c:Larv;

    if-eqz v0, :cond_3

    .line 55
    iget-object v0, p0, Lase;->c:Larv;

    invoke-interface {v0}, Larv;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lase;->a:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lase;->a:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getType()I

    move-result v0

    .line 69
    :goto_0
    return v0

    .line 64
    :cond_0
    iget-object v0, p0, Lase;->b:Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lase;->b:Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    invoke-interface {v0}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginType()I

    move-result v0

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lase;->c:Larv;

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lase;->c:Larv;

    invoke-interface {v0}, Larv;->b()I

    move-result v0

    goto :goto_0

    .line 69
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lase;->a:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lase;->a:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getKind()Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 76
    :cond_0
    iget-object v0, p0, Lase;->b:Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lase;->b:Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    invoke-interface {v0}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginKind()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lase;->a:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lase;->a:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getPkgName()Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 85
    :cond_0
    iget-object v0, p0, Lase;->b:Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lase;->b:Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    invoke-interface {v0}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, p0, Lase;->c:Larv;

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lase;->c:Larv;

    invoke-interface {v0}, Larv;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lase;->a:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lase;->a:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    .line 97
    :cond_0
    iget-object v0, p0, Lase;->b:Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    if-eqz v0, :cond_1

    .line 99
    const-string/jumbo v0, ""

    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, p0, Lase;->c:Larv;

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lase;->c:Larv;

    invoke-interface {v0}, Larv;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x2

    .line 108
    const-string/jumbo v0, ""

    .line 109
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lase;->a:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Lase;->a:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getName()Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 126
    const-string/jumbo v0, "\u65b0\u589e\u63d2\u4ef6"

    .line 130
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v0

    .line 111
    .restart local v0    # "name":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lase;->b:Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    if-eqz v1, :cond_3

    .line 113
    iget-object v1, p0, Lase;->b:Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    invoke-interface {v1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginType()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 114
    invoke-static {v2}, Lasa;->f(I)I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    .line 115
    const-string/jumbo v0, "\u8bfb\u4f60\u59b9"

    goto :goto_0

    .line 117
    :cond_2
    iget-object v1, p0, Lase;->b:Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    invoke-interface {v1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginType()I

    move-result v1

    invoke-static {v1}, Lasa;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_3
    iget-object v1, p0, Lase;->c:Larv;

    if-eqz v1, :cond_4

    .line 120
    iget-object v1, p0, Lase;->c:Larv;

    invoke-interface {v1}, Larv;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 122
    :cond_4
    const-string/jumbo v0, ""

    goto :goto_0

    .line 127
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 128
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lase;->a:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lase;->a:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getLinkUrl()Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    .line 137
    :cond_0
    iget-object v0, p0, Lase;->b:Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    if-eqz v0, :cond_1

    .line 138
    const-string/jumbo v0, ""

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lase;->c:Larv;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lase;->c:Larv;

    invoke-interface {v0}, Larv;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lase;->a:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lase;->a:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getPluginId()Ljava/lang/String;

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    .line 149
    :cond_0
    iget-object v0, p0, Lase;->b:Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lase;->b:Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    invoke-interface {v0}, Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;->getPluginType()I

    move-result v0

    invoke-static {v0}, Lasa;->d(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, p0, Lase;->c:Larv;

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lase;->c:Larv;

    invoke-interface {v0}, Larv;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public i()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 171
    iget-object v1, p0, Lase;->a:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    if-eqz v1, :cond_1

    .line 172
    iget-object v0, p0, Lase;->a:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->isAutoDownload()Z

    move-result v0

    .line 178
    :cond_0
    :goto_0
    return v0

    .line 173
    :cond_1
    iget-object v1, p0, Lase;->b:Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    if-nez v1, :cond_0

    .line 175
    iget-object v1, p0, Lase;->c:Larv;

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 183
    iget-object v1, p0, Lase;->a:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    if-eqz v1, :cond_1

    .line 184
    iget-object v0, p0, Lase;->a:Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->isAutoInstall()Z

    move-result v0

    .line 190
    :cond_0
    :goto_0
    return v0

    .line 185
    :cond_1
    iget-object v1, p0, Lase;->b:Lcom/iflytek/framework/plugin/internal/interfaces/IPlugin;

    if-nez v1, :cond_0

    .line 187
    iget-object v1, p0, Lase;->c:Larv;

    if-eqz v1, :cond_0

    goto :goto_0
.end method
