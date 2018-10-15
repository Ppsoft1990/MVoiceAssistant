.class public Lasu;
.super Ljava/lang/Object;
.source "PluginItemIdManager.java"


# static fields
.field private static a:Lasu;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lasu;->b:Ljava/util/List;

    .line 18
    return-void
.end method

.method public static a()Lasu;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lasu;->a:Lasu;

    if-nez v0, :cond_1

    .line 22
    const-class v1, Lasu;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lasu;->a:Lasu;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lasu;

    invoke-direct {v0}, Lasu;-><init>()V

    sput-object v0, Lasu;->a:Lasu;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    sget-object v0, Lasu;->a:Lasu;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(I)I
    .locals 3
    .param p1, "pluginType"    # I

    .prologue
    .line 40
    iget-object v1, p0, Lasu;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 41
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 42
    sget-object v1, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;->plugin:Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;

    invoke-virtual {v1}, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;->value()I

    move-result v1

    add-int/2addr v1, v0

    .line 44
    :goto_0
    return v1

    :cond_0
    sget-object v1, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;->default_type:Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;

    invoke-virtual {v1}, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;->value()I

    move-result v1

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;)I
    .locals 1
    .param p1, "pluginType"    # Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;

    .prologue
    .line 32
    if-nez p1, :cond_0

    .line 33
    sget-object v0, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;->default_type:Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;

    invoke-virtual {v0}, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;->value()I

    move-result v0

    .line 36
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;->value()I

    move-result v0

    goto :goto_0
.end method

.method public b(I)V
    .locals 3
    .param p1, "pluginType"    # I

    .prologue
    .line 53
    iget-object v1, p0, Lasu;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 54
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 55
    iget-object v1, p0, Lasu;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_0
    return-void
.end method
