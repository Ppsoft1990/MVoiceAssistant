.class public Lcom/iflytek/mmp/components/database/SharedPreferencesComponents;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/mmp/core/componentsManager/Components;


# static fields
.field private static externalSharedPreferences:Lcom/iflytek/mmp/components/database/SharedPreferencesComponents$ExternalSharedPreferences;


# instance fields
.field private browserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

.field private context:Landroid/content/Context;

.field public editor:Landroid/content/SharedPreferences$Editor;

.field public sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setExternalSharedPreferences(Lcom/iflytek/mmp/components/database/SharedPreferencesComponents$ExternalSharedPreferences;)V
    .locals 0

    sput-object p0, Lcom/iflytek/mmp/components/database/SharedPreferencesComponents;->externalSharedPreferences:Lcom/iflytek/mmp/components/database/SharedPreferencesComponents$ExternalSharedPreferences;

    return-void
.end method


# virtual methods
.method public exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 3

    const-string/jumbo v0, "putString"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/mmp/components/database/SharedPreferencesComponents;->initSharedPreferences(Ljava/lang/String;I)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/mmp/components/database/SharedPreferencesComponents;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    invoke-direct {v0}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Exception Info : "

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v1, "JSON error"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "getString"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/mmp/components/database/SharedPreferencesComponents;->initSharedPreferences(Ljava/lang/String;I)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/mmp/components/database/SharedPreferencesComponents;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v2, "OK"

    invoke-direct {v0, v2, v1}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "Exception Info : "

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Ltc;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v1, "JSON error"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    const-string/jumbo v1, "Invalid action"

    const-string/jumbo v2, "\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/iflytek/mmp/components/database/SharedPreferencesComponents;->externalSharedPreferences:Lcom/iflytek/mmp/components/database/SharedPreferencesComponents$ExternalSharedPreferences;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/mmp/components/database/SharedPreferencesComponents;->externalSharedPreferences:Lcom/iflytek/mmp/components/database/SharedPreferencesComponents$ExternalSharedPreferences;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/mmp/components/database/SharedPreferencesComponents$ExternalSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/mmp/components/database/SharedPreferencesComponents;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/mmp/components/database/SharedPreferencesComponents;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/iflytek/mmp/components/database/SharedPreferencesComponents;->browserCore:Lcom/iflytek/mmp/core/webcore/BrowserCore;

    return-void
.end method

.method public initSharedPreferences(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/mmp/components/database/SharedPreferencesComponents;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/mmp/components/database/SharedPreferencesComponents;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/iflytek/mmp/components/database/SharedPreferencesComponents;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/mmp/components/database/SharedPreferencesComponents;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/iflytek/mmp/components/database/SharedPreferencesComponents;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/mmp/components/database/SharedPreferencesComponents;->editor:Landroid/content/SharedPreferences$Editor;

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/iflytek/mmp/components/database/SharedPreferencesComponents;->externalSharedPreferences:Lcom/iflytek/mmp/components/database/SharedPreferencesComponents$ExternalSharedPreferences;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iflytek/mmp/components/database/SharedPreferencesComponents;->externalSharedPreferences:Lcom/iflytek/mmp/components/database/SharedPreferencesComponents$ExternalSharedPreferences;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/mmp/components/database/SharedPreferencesComponents$ExternalSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/mmp/components/database/SharedPreferencesComponents;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/iflytek/mmp/components/database/SharedPreferencesComponents;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
