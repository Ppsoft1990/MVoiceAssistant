.class public Ladf;
.super Ljava/lang/Object;
.source "WidgetSmsOfflineView.java"

# interfaces
.implements Lcom/iflytek/framework/ui/DisplayComponent;
.implements Lcom/iflytek/mmp/core/componentsManager/Components;
.implements Lno$c;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Ladf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ladf;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "pContext"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Ladf;->b:Landroid/content/Context;

    .line 38
    return-void
.end method

.method static synthetic a(Ladf;)Z
    .locals 1
    .param p0, "x0"    # Ladf;

    .prologue
    .line 32
    invoke-direct {p0}, Ladf;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Ladf;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Ladf;

    .prologue
    .line 32
    iget-object v0, p0, Ladf;->b:Landroid/content/Context;

    return-object v0
.end method

.method private b()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 81
    sget-object v1, Ladf;->a:Ljava/lang/String;

    const-string/jumbo v2, "Download Start !!!"

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_LANGUAGE_CHIOCE_v2"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lil;->b(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 86
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ladf;->b:Landroid/content/Context;

    const-class v2, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.EXTRA_DOWNLOAD_TYPE"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    iget-object v1, p0, Ladf;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 96
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v4

    .line 92
    :cond_0
    iget-object v1, p0, Ladf;->b:Landroid/content/Context;

    const v2, 0x7f0c02f1

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 100
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_0

    .line 101
    invoke-direct {p0}, Ladf;->b()Z

    .line 133
    :goto_0
    return-void

    .line 104
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v2, p0, Ladf;->b:Landroid/content/Context;

    new-instance v3, Ladf$1;

    invoke-direct {v3, p0}, Ladf$1;-><init>(Ladf;)V

    invoke-static {v2, v1, v3}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Lpj;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    .end local v1    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Ladf;->a:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public canDelete()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public configInfo()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public downloadError(ILandroid/content/Intent;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errorIntent"    # Landroid/content/Intent;

    .prologue
    .line 172
    return-void
.end method

.method public downloadStatusChanged(Landroid/content/Intent;)V
    .locals 0
    .param p1, "statusIntent"    # Landroid/content/Intent;

    .prologue
    .line 166
    return-void
.end method

.method public exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "jsonArgs"    # Ljava/lang/String;

    .prologue
    .line 137
    const-string/jumbo v0, "download"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-direct {p0}, Ladf;->c()V

    .line 141
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getComponents()Lcom/iflytek/mmp/core/componentsManager/Components;
    .locals 0

    .prologue
    .line 47
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string/jumbo v0, "WidgetSmsOfflineView"

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/iflytek/mmp/core/webcore/BrowserCore;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "browserCore"    # Lcom/iflytek/mmp/core/webcore/BrowserCore;

    .prologue
    .line 155
    return-void
.end method

.method public installStatusChanged(Landroid/content/Intent;)V
    .locals 7
    .param p1, "installIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 177
    sget-object v4, Ladf;->a:Ljava/lang/String;

    const-string/jumbo v5, "installStatusChanged"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    if-eqz p1, :cond_1

    .line 179
    const-string/jumbo v4, "install_result"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 181
    .local v1, "errorCode":I
    const-string/jumbo v4, "install_type"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 183
    .local v3, "type":I
    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    if-nez v1, :cond_1

    .line 186
    const/4 v2, 0x0

    .line 188
    .local v2, "tip":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Ladf;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c006b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 192
    :goto_0
    if-eqz v2, :cond_0

    .line 193
    iget-object v4, p0, Ladf;->b:Landroid/content/Context;

    invoke-static {v4, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 194
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 197
    :cond_0
    invoke-virtual {p0}, Ladf;->a()V

    .line 201
    .end local v1    # "errorCode":I
    .end local v2    # "tip":Ljava/lang/String;
    .end local v3    # "type":I
    :cond_1
    return-void

    .line 189
    .restart local v1    # "errorCode":I
    .restart local v2    # "tip":Ljava/lang/String;
    .restart local v3    # "type":I
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Ladf;->a:Ljava/lang/String;

    const-string/jumbo v5, "getString(int resId)"

    invoke-static {v4, v5, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isHistoryResult()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 52
    const/4 v1, 0x0

    .line 54
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v3, "taskHandler"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    sget-object v3, Ladf;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 61
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 61
    const/4 v2, 0x0

    goto :goto_0

    .line 58
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_1
.end method
