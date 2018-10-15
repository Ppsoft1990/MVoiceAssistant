.class public final Lcom/iflytek/framework/plugin/internal/parser/PluginInterfaceParser;
.super Ljava/lang/Object;
.source "PluginInterfaceParser.java"

# interfaces
.implements Lcom/iflytek/framework/plugin/internal/parser/IPluginParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/iflytek/framework/plugin/internal/parser/IPluginParser",
        "<",
        "Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginInterfaceParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseData(Ljava/util/Properties;)Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;
    .locals 11
    .param p1, "parseData"    # Ljava/util/Properties;

    .prologue
    const/4 v8, 0x0

    .line 23
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Properties;->size()I

    move-result v9

    if-nez v9, :cond_2

    .line 24
    :cond_0
    const-string/jumbo v9, "PluginInterfaceParser"

    const-string/jumbo v10, "parseData map is null or size 0"

    invoke-static {v9, v10}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 58
    :cond_1
    :goto_0
    return-object v5

    .line 29
    :cond_2
    :try_start_0
    new-instance v5, Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;

    invoke-direct {v5}, Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;-><init>()V

    .line 31
    .local v5, "pluginInterface":Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;
    const-string/jumbo v9, "plugin_class"

    invoke-virtual {p1, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 32
    .local v4, "pluginClass":Ljava/lang/String;
    const-string/jumbo v9, "skin_class"

    invoke-virtual {p1, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 33
    .local v6, "skinClass":Ljava/lang/String;
    const-string/jumbo v9, "ability_class"

    invoke-virtual {p1, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "abilityClass":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 36
    invoke-virtual {v5, v4}, Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;->setBundleClassPath(Ljava/lang/String;)V

    .line 39
    :cond_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 40
    invoke-virtual {v5, v6}, Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;->setSkinClassPath(Ljava/lang/String;)V

    .line 43
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 44
    const-string/jumbo v9, ";"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 45
    .local v7, "tempStrings":[Ljava/lang/String;
    if-eqz v7, :cond_1

    array-length v9, v7

    if-lez v9, :cond_1

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v1, "abilityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v9, v7

    if-ge v3, v9, :cond_5

    .line 48
    aget-object v9, v7, v3

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 50
    :cond_5
    invoke-virtual {v5, v1}, Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;->setPluginAbilityClassPaths(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    .end local v0    # "abilityClass":Ljava/lang/String;
    .end local v1    # "abilityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v4    # "pluginClass":Ljava/lang/String;
    .end local v5    # "pluginInterface":Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;
    .end local v6    # "skinClass":Ljava/lang/String;
    .end local v7    # "tempStrings":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 56
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "PluginInterfaceParser"

    const-string/jumbo v10, ""

    invoke-static {v9, v10, v2}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v8

    .line 58
    goto :goto_0
.end method

.method public bridge synthetic parseData(Ljava/util/Properties;)Lcom/iflytek/framework/plugin/internal/interfaces/IPluginData;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/iflytek/framework/plugin/internal/parser/PluginInterfaceParser;->parseData(Ljava/util/Properties;)Lcom/iflytek/framework/plugin/internal/entities/PluginInterface;

    move-result-object v0

    return-object v0
.end method
