.class public Lcom/iflytek/greenplug/server/service/IntentMatcher;
.super Ljava/lang/Object;
.source "IntentMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IntentMatcher"

.field private static final mResolvePrioritySorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 246
    new-instance v0, Lcom/iflytek/greenplug/server/service/IntentMatcher$1;

    invoke-direct {v0}, Lcom/iflytek/greenplug/server/service/IntentMatcher$1;-><init>()V

    sput-object v0, Lcom/iflytek/greenplug/server/service/IntentMatcher;->mResolvePrioritySorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static newResolveInfo(Landroid/content/pm/ComponentInfo;Landroid/content/IntentFilter;)Landroid/content/pm/ResolveInfo;
    .locals 3
    .param p0, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p1, "intentFilter"    # Landroid/content/IntentFilter;

    .prologue
    .line 222
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 223
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v1, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 224
    iget v1, p0, Landroid/content/pm/ComponentInfo;->labelRes:I

    iput v1, v0, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 225
    iget v1, p0, Landroid/content/pm/ComponentInfo;->icon:I

    iput v1, v0, Landroid/content/pm/ResolveInfo;->icon:I

    .line 226
    const/4 v1, 0x1

    iput v1, v0, Landroid/content/pm/ResolveInfo;->specificIndex:I

    .line 227
    const/4 v1, 0x0

    iput v1, v0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 229
    if-eqz p1, :cond_0

    .line 230
    iput-object p1, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 231
    invoke-virtual {p1}, Landroid/content/IntentFilter;->getPriority()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 234
    :cond_0
    instance-of v1, p0, Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_2

    .line 235
    check-cast p0, Landroid/content/pm/ActivityInfo;

    .end local p0    # "componentInfo":Landroid/content/pm/ComponentInfo;
    iput-object p0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 243
    :cond_1
    :goto_0
    return-object v0

    .line 236
    .restart local p0    # "componentInfo":Landroid/content/pm/ComponentInfo;
    :cond_2
    instance-of v1, p0, Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_3

    .line 237
    check-cast p0, Landroid/content/pm/ServiceInfo;

    .end local p0    # "componentInfo":Landroid/content/pm/ComponentInfo;
    iput-object p0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_0

    .line 238
    .restart local p0    # "componentInfo":Landroid/content/pm/ComponentInfo;
    :cond_3
    instance-of v1, p0, Landroid/content/pm/ProviderInfo;

    if-eqz v1, :cond_1

    .line 239
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 240
    check-cast p0, Landroid/content/pm/ProviderInfo;

    .end local p0    # "componentInfo":Landroid/content/pm/ComponentInfo;
    iput-object p0, v0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    goto :goto_0
.end method

.method private static queryComponentByCompName(Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;Landroid/content/ComponentName;Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;ILjava/util/List;)V
    .locals 5
    .param p0, "packageParser"    # Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    .param p1, "compName"    # Landroid/content/ComponentName;
    .param p2, "intentType"    # Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;",
            "Landroid/content/ComponentName;",
            "Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p4, "outList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    const/4 v0, 0x0

    .line 135
    .local v0, "componentInfo":Landroid/content/pm/ComponentInfo;
    :try_start_0
    sget-object v3, Lcom/iflytek/greenplug/server/service/IntentMatcher$2;->a:[I

    invoke-virtual {p2}, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 149
    :goto_1
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/iflytek/greenplug/server/service/IntentMatcher;->newResolveInfo(Landroid/content/pm/ComponentInfo;Landroid/content/IntentFilter;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 150
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "IntentMatcher"

    const-string/jumbo v4, "queryComponentByCompName error"

    invoke-static {v3, v4, v1}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 137
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_0
    :try_start_1
    invoke-virtual {p0, p1, p3}, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 138
    goto :goto_1

    .line 140
    :pswitch_1
    invoke-virtual {p0, p1, p3}, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 141
    goto :goto_1

    .line 143
    :pswitch_2
    invoke-virtual {p0, p1, p3}, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 144
    goto :goto_1

    .line 146
    :pswitch_3
    invoke-virtual {p0, p1, p3}, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static queryComponentByIntentFilter(Landroid/content/Context;Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;Landroid/content/Intent;Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;ILjava/util/List;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageParser"    # Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "intentType"    # Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;",
            "Landroid/content/Intent;",
            "Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 157
    .local p5, "outList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez p3, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    const/4 v4, 0x0

    .line 161
    .local v4, "intentFilterMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Ljava/util/List<Landroid/content/IntentFilter;>;>;"
    sget-object v8, Lcom/iflytek/greenplug/server/service/IntentMatcher$2;->a:[I

    invoke-virtual/range {p3 .. p3}, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 175
    :goto_1
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v8

    if-ltz v8, :cond_5

    .line 176
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 177
    .local v1, "compName":Landroid/content/ComponentName;
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 178
    .local v5, "intentFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 179
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    .line 180
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x1

    const-string/jumbo v12, ""

    invoke-virtual {v3, v10, p2, v11, v12}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v6

    .line 181
    .local v6, "match":I
    if-ltz v6, :cond_3

    .line 182
    const/4 v2, 0x0

    .line 183
    .local v2, "componentInfo":Landroid/content/pm/ComponentInfo;
    sget-object v10, Lcom/iflytek/greenplug/server/service/IntentMatcher$2;->a:[I

    invoke-virtual/range {p3 .. p3}, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_1

    .line 197
    :goto_3
    const/high16 v10, 0x10000

    and-int v10, v10, p4

    if-eqz v10, :cond_4

    .line 199
    const-string/jumbo v10, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 200
    invoke-static {v2, v3}, Lcom/iflytek/greenplug/server/service/IntentMatcher;->newResolveInfo(Landroid/content/pm/ComponentInfo;Landroid/content/IntentFilter;)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 201
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iput v6, v7, Landroid/content/pm/ResolveInfo;->match:I

    .line 202
    const/4 v10, 0x1

    iput-boolean v10, v7, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 203
    move-object/from16 v0, p5

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 163
    .end local v1    # "compName":Landroid/content/ComponentName;
    .end local v2    # "componentInfo":Landroid/content/pm/ComponentInfo;
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    .end local v5    # "intentFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v6    # "match":I
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :pswitch_0
    invoke-virtual {p1}, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;->getAllActivityIntentFilter()Ljava/util/Map;

    move-result-object v4

    .line 164
    goto :goto_1

    .line 166
    :pswitch_1
    invoke-virtual {p1}, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;->getAllServiceIntentFilter()Ljava/util/Map;

    move-result-object v4

    .line 167
    goto :goto_1

    .line 169
    :pswitch_2
    invoke-virtual {p1}, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;->getAllReceiverIntentFilter()Ljava/util/Map;

    move-result-object v4

    .line 170
    goto :goto_1

    .line 172
    :pswitch_3
    invoke-virtual {p1}, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;->getAllProviderIntentFilter()Ljava/util/Map;

    move-result-object v4

    goto/16 :goto_1

    .line 185
    .restart local v1    # "compName":Landroid/content/ComponentName;
    .restart local v2    # "componentInfo":Landroid/content/pm/ComponentInfo;
    .restart local v3    # "intentFilter":Landroid/content/IntentFilter;
    .restart local v5    # "intentFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .restart local v6    # "match":I
    :pswitch_4
    move/from16 v0, p4

    invoke-virtual {p1, v1, v0}, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 186
    goto :goto_3

    .line 188
    :pswitch_5
    move/from16 v0, p4

    invoke-virtual {p1, v1, v0}, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    .line 189
    goto :goto_3

    .line 191
    :pswitch_6
    move/from16 v0, p4

    invoke-virtual {p1, v1, v0}, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 192
    goto :goto_3

    .line 194
    :pswitch_7
    move/from16 v0, p4

    invoke-virtual {p1, v1, v0}, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    goto :goto_3

    .line 206
    :cond_4
    invoke-static {v2, v3}, Lcom/iflytek/greenplug/server/service/IntentMatcher;->newResolveInfo(Landroid/content/pm/ComponentInfo;Landroid/content/IntentFilter;)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 207
    .restart local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    iput v6, v7, Landroid/content/pm/ResolveInfo;->match:I

    .line 208
    const/4 v10, 0x0

    iput-boolean v10, v7, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 209
    move-object/from16 v0, p5

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 217
    .end local v1    # "compName":Landroid/content/ComponentName;
    .end local v2    # "componentInfo":Landroid/content/pm/ComponentInfo;
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    .end local v5    # "intentFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v6    # "match":I
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_5
    const-string/jumbo v8, "IntentMatcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "queryComponentByIntentFilter fail, intentFilter is null in pkg:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 183
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static final resolveIntent(Landroid/content/Context;Ljava/util/Map;Landroid/content/Intent;Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;I)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "intentType"    # Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "installedPlugins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;>;"
    if-eqz p2, :cond_0

    if-nez p0, :cond_1

    .line 42
    :cond_0
    const/4 v5, 0x0

    .line 126
    :goto_0
    return-object v5

    .line 44
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 46
    .local v6, "comp":Landroid/content/ComponentName;
    if-nez v6, :cond_2

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v0, v2, :cond_2

    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p2

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 56
    :cond_2
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 57
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;

    .line 58
    .local v1, "parser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    if-eqz v1, :cond_7

    .line 59
    if-nez p3, :cond_6

    .line 61
    sget-object v0, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;->activity:Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

    invoke-static {v1, v6, v0, p4, v5}, Lcom/iflytek/greenplug/server/service/IntentMatcher;->queryComponentByCompName(Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;Landroid/content/ComponentName;Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;ILjava/util/List;)V

    .line 62
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 63
    sget-object v0, Lcom/iflytek/greenplug/server/service/IntentMatcher;->mResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 66
    :cond_3
    sget-object v0, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;->service:Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

    invoke-static {v1, v6, v0, p4, v5}, Lcom/iflytek/greenplug/server/service/IntentMatcher;->queryComponentByCompName(Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;Landroid/content/ComponentName;Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;ILjava/util/List;)V

    .line 67
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 68
    sget-object v0, Lcom/iflytek/greenplug/server/service/IntentMatcher;->mResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 71
    :cond_4
    sget-object v0, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;->provider:Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

    invoke-static {v1, v6, v0, p4, v5}, Lcom/iflytek/greenplug/server/service/IntentMatcher;->queryComponentByCompName(Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;Landroid/content/ComponentName;Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;ILjava/util/List;)V

    .line 72
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 73
    sget-object v0, Lcom/iflytek/greenplug/server/service/IntentMatcher;->mResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 76
    :cond_5
    sget-object v0, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;->receiver:Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

    invoke-static {v1, v6, v0, p4, v5}, Lcom/iflytek/greenplug/server/service/IntentMatcher;->queryComponentByCompName(Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;Landroid/content/ComponentName;Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;ILjava/util/List;)V

    .line 77
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 78
    sget-object v0, Lcom/iflytek/greenplug/server/service/IntentMatcher;->mResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 82
    :cond_6
    invoke-static {v1, v6, p3, p4, v5}, Lcom/iflytek/greenplug/server/service/IntentMatcher;->queryComponentByCompName(Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;Landroid/content/ComponentName;Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;ILjava/util/List;)V

    .line 83
    sget-object v0, Lcom/iflytek/greenplug/server/service/IntentMatcher;->mResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_0

    .line 88
    :cond_7
    const-string/jumbo v0, "IntentMatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resolveIntent fail, not find plugin pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 94
    .end local v1    # "parser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v7

    .line 96
    .local v7, "pkgName":Ljava/lang/String;
    if-eqz v7, :cond_c

    .line 97
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;

    .line 98
    .restart local v1    # "parser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    if-eqz v1, :cond_b

    .line 99
    if-nez p3, :cond_a

    .line 101
    sget-object v3, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;->activity:Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

    move-object v0, p0

    move-object v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/iflytek/greenplug/server/service/IntentMatcher;->queryComponentByIntentFilter(Landroid/content/Context;Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;Landroid/content/Intent;Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;ILjava/util/List;)V

    .line 102
    sget-object v3, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;->service:Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

    move-object v0, p0

    move-object v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/iflytek/greenplug/server/service/IntentMatcher;->queryComponentByIntentFilter(Landroid/content/Context;Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;Landroid/content/Intent;Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;ILjava/util/List;)V

    .line 103
    sget-object v3, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;->provider:Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

    move-object v0, p0

    move-object v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/iflytek/greenplug/server/service/IntentMatcher;->queryComponentByIntentFilter(Landroid/content/Context;Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;Landroid/content/Intent;Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;ILjava/util/List;)V

    .line 104
    sget-object v3, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;->receiver:Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

    move-object v0, p0

    move-object v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/iflytek/greenplug/server/service/IntentMatcher;->queryComponentByIntentFilter(Landroid/content/Context;Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;Landroid/content/Intent;Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;ILjava/util/List;)V

    .line 125
    .end local v1    # "parser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    :cond_9
    :goto_1
    sget-object v0, Lcom/iflytek/greenplug/server/service/IntentMatcher;->mResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_0

    .restart local v1    # "parser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    :cond_a
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 106
    invoke-static/range {v0 .. v5}, Lcom/iflytek/greenplug/server/service/IntentMatcher;->queryComponentByIntentFilter(Landroid/content/Context;Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;Landroid/content/Intent;Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;ILjava/util/List;)V

    goto :goto_1

    .line 110
    :cond_b
    const-string/jumbo v0, "IntentMatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resolveIntent fail, not find plugin pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 114
    .end local v1    # "parser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    :cond_c
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;

    .line 115
    .restart local v1    # "parser":Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;
    if-nez p3, :cond_d

    .line 116
    sget-object v3, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;->activity:Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

    move-object v0, p0

    move-object v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/iflytek/greenplug/server/service/IntentMatcher;->queryComponentByIntentFilter(Landroid/content/Context;Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;Landroid/content/Intent;Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;ILjava/util/List;)V

    .line 117
    sget-object v3, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;->service:Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

    move-object v0, p0

    move-object v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/iflytek/greenplug/server/service/IntentMatcher;->queryComponentByIntentFilter(Landroid/content/Context;Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;Landroid/content/Intent;Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;ILjava/util/List;)V

    .line 118
    sget-object v3, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;->provider:Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

    move-object v0, p0

    move-object v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/iflytek/greenplug/server/service/IntentMatcher;->queryComponentByIntentFilter(Landroid/content/Context;Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;Landroid/content/Intent;Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;ILjava/util/List;)V

    .line 119
    sget-object v3, Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;->receiver:Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;

    move-object v0, p0

    move-object v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/iflytek/greenplug/server/service/IntentMatcher;->queryComponentByIntentFilter(Landroid/content/Context;Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;Landroid/content/Intent;Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;ILjava/util/List;)V

    goto :goto_2

    :cond_d
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 121
    invoke-static/range {v0 .. v5}, Lcom/iflytek/greenplug/server/service/IntentMatcher;->queryComponentByIntentFilter(Landroid/content/Context;Lcom/iflytek/greenplug/server/pm/PluginPackageInfo;Landroid/content/Intent;Lcom/iflytek/greenplug/server/service/IntentMatcher$IntentType;ILjava/util/List;)V

    goto :goto_2
.end method
