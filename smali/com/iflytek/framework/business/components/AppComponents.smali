.class public final Lcom/iflytek/framework/business/components/AppComponents;
.super Lcom/iflytek/framework/business/components/AbsComponents;
.source "AppComponents.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Business_AppComponents"


# instance fields
.field private mAppCardAbilityHelper:Lub;

.field private mAppManager:Lgq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/AbsComponents;-><init>()V

    return-void
.end method

.method private getExistMapApps()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/app/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    const-string/jumbo v5, "Business_AppComponents"

    const-string/jumbo v6, "getExistMapApps()"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/AppComponents;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090017

    .line 157
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "mapNames":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/AppComponents;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090016

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, "mapPackages":[Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    array-length v5, v3

    if-lez v5, :cond_0

    array-length v5, v4

    if-gtz v5, :cond_2

    .line 163
    :cond_0
    const/4 v1, 0x0

    .line 175
    :cond_1
    return-object v1

    .line 166
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v1, "existMapApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/app/AppItem;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/AppComponents;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lgq;->a(Landroid/content/Context;)Lgq;

    move-result-object v5

    aget-object v6, v3, v2

    aget-object v7, v4, v2

    invoke-virtual {v5, v6, v7}, Lgq;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/base/app/AppItem;

    move-result-object v0

    .line 170
    .local v0, "appItem":Lcom/iflytek/base/app/AppItem;
    if-eqz v0, :cond_3

    .line 171
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getSearchResult(Ljava/util/ArrayList;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/app/AppItem;",
            ">;)",
            "Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "appItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/app/AppItem;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 108
    .local v1, "appInfos":Lorg/json/JSONArray;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 109
    :cond_0
    const-string/jumbo v7, "Business_AppComponents"

    const-string/jumbo v8, "queryAppItems appname is empty"

    invoke-static {v7, v8}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v7, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v8, "OK"

    invoke-direct {v7, v8, v1}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 144
    :goto_0
    return-object v7

    .line 113
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/base/app/AppItem;

    .line 114
    .local v2, "appItem":Lcom/iflytek/base/app/AppItem;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 115
    .local v0, "appInfo":Lorg/json/JSONObject;
    const-string/jumbo v8, "appName"

    invoke-virtual {v2}, Lcom/iflytek/base/app/AppItem;->getAppName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string/jumbo v8, "packageName"

    invoke-virtual {v2}, Lcom/iflytek/base/app/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string/jumbo v8, "className"

    invoke-virtual {v2}, Lcom/iflytek/base/app/AppItem;->getAppClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    :try_start_0
    invoke-virtual {v2}, Lcom/iflytek/base/app/AppItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-nez v8, :cond_2

    .line 121
    const/4 v6, 0x0

    .line 122
    .local v6, "thumbnail":Landroid/graphics/drawable/Drawable;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 123
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Lcom/iflytek/base/app/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 124
    invoke-virtual {v2}, Lcom/iflytek/base/app/AppItem;->getAppClassName()Ljava/lang/String;

    move-result-object v9

    .line 123
    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/AppComponents;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 126
    invoke-virtual {v8, v4}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 127
    invoke-virtual {v2, v6}, Lcom/iflytek/base/app/AppItem;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 129
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "thumbnail":Landroid/graphics/drawable/Drawable;
    :cond_2
    const-string/jumbo v8, "appIcon"

    .line 131
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/AppComponents;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    invoke-virtual {v2}, Lcom/iflytek/base/app/AppItem;->getAppName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ".png"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 133
    invoke-virtual {v2}, Lcom/iflytek/base/app/AppItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/4 v12, 0x0

    .line 131
    invoke-static {v9, v10, v11, v12}, Lazk;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)Ljava/lang/String;

    move-result-object v9

    .line 129
    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_2
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_1

    .line 134
    :catch_0
    move-exception v3

    .line 135
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v8, "Business_AppComponents"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v3}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 141
    .end local v0    # "appInfo":Lorg/json/JSONObject;
    .end local v2    # "appItem":Lcom/iflytek/base/app/AppItem;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 142
    .local v5, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v7, "items"

    invoke-virtual {v5, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    new-instance v7, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v8, "OK"

    invoke-direct {v7, v8, v5}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 13
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x0

    .line 41
    const-string/jumbo v9, "Business_AppComponents"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onExec action = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " params = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-string/jumbo v9, "searchApp"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 43
    invoke-virtual {p2, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "appName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/iflytek/framework/business/components/AppComponents;->queryAppItems(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 45
    .local v4, "listAppItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/app/AppItem;>;"
    invoke-direct {p0, v4}, Lcom/iflytek/framework/business/components/AppComponents;->getSearchResult(Ljava/util/ArrayList;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    move-result-object v8

    .line 69
    .end local v0    # "appName":Ljava/lang/String;
    .end local v4    # "listAppItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/base/app/AppItem;>;"
    :cond_0
    :goto_0
    return-object v8

    .line 47
    :cond_1
    const-string/jumbo v9, "openApp"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 48
    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 49
    .local v7, "packageName":Ljava/lang/String;
    const/4 v9, 0x2

    invoke-virtual {p2, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {p0, v7, v1}, Lcom/iflytek/framework/business/components/AppComponents;->openApp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    .end local v1    # "className":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v9, "searchMapApp"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 53
    invoke-direct {p0}, Lcom/iflytek/framework/business/components/AppComponents;->getExistMapApps()Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/iflytek/framework/business/components/AppComponents;->getSearchResult(Ljava/util/ArrayList;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    move-result-object v8

    goto :goto_0

    .line 54
    :cond_3
    const-string/jumbo v9, "openMapApp"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 55
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/AppComponents;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lans;->a(Landroid/content/Context;)Lans;

    move-result-object v8

    invoke-virtual {v8, p2}, Lans;->a(Lorg/json/JSONArray;)Z

    move-result v3

    .line 56
    .local v3, "isSuccess":Z
    new-instance v8, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v9, "OK"

    invoke-direct {v8, v9, v3}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    .line 57
    .end local v3    # "isSuccess":Z
    :cond_4
    const-string/jumbo v9, "isAppInstalled"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 58
    invoke-virtual {p2, v12}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v5

    .line 59
    .local v5, "packageArr":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .line 60
    .local v6, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 61
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .restart local v6    # "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_5

    .line 63
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 66
    .end local v2    # "i":I
    :cond_5
    new-instance v8, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v9, "OK"

    iget-object v10, p0, Lcom/iflytek/framework/business/components/AppComponents;->mAppCardAbilityHelper:Lub;

    invoke-virtual {v10, v6}, Lub;->b(Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_0
.end method

.method protected onInit(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .line 75
    invoke-static {p1}, Lgq;->a(Landroid/content/Context;)Lgq;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/framework/business/components/AppComponents;->mAppManager:Lgq;

    .line 77
    :cond_0
    new-instance v0, Lub;

    invoke-direct {v0, p1, p2}, Lub;-><init>(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V

    iput-object v0, p0, Lcom/iflytek/framework/business/components/AppComponents;->mAppCardAbilityHelper:Lub;

    .line 78
    return-void
.end method

.method public openApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/iflytek/framework/business/components/AppComponents;->mAppManager:Lgq;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/iflytek/framework/business/components/AppComponents;->mAppManager:Lgq;

    invoke-virtual {v0, p1, p2}, Lgq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    return-void
.end method

.method public queryAppItems(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "appName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iflytek/base/app/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const-string/jumbo v0, "Business_AppComponents"

    const-string/jumbo v1, "queryAppItems appname is empty"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v0, 0x0

    .line 102
    :goto_0
    return-object v0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/framework/business/components/AppComponents;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lgq;->a(Landroid/content/Context;)Lgq;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p1}, Lgq;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method
