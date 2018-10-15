.class public Lcom/iflytek/viafly/browser/BrowserComponent;
.super Ljava/lang/Object;
.source "BrowserComponent.java"

# interfaces
.implements Lcom/iflytek/viafly/browser/IBrowserPageCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/browser/BrowserComponent$MyDownloadListener;
    }
.end annotation


# static fields
.field private static final CLICK_WAIT_TIME:I = 0x1f4

.field public static final EXTRA_BROWSER_CALL_PARAMS:Ljava/lang/String; = "com.iflytek.cmccbrowser.EXTRA_BREIF_ITEM"

.field public static final EXTRA_IS_FROM_NOTIFICATION:Ljava/lang/String; = "isFromNotification"

.field public static final EXTRA_IS_IM_REDIRECT:Ljava/lang/String; = "redirectIMOnlineWap"

.field public static final EXTRA_IS_TRANSLATE_ENTRY_REDIRECT:Ljava/lang/String; = "redirectTranslateEntryOnlineWap"

.field private static final TAG:Ljava/lang/String; = "BrowserComponent"


# instance fields
.field private last_click_time:J

.field private mBrowserConnection:Lcom/iflytek/viafly/browser/IBrowserConnection;

.field private mBrowserPageAbility:Lcom/iflytek/viafly/browser/IBrowserPageAbility;

.field private mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

.field private mBrowserViewComponents:Lcom/iflytek/viafly/browser/BrowserViewComponents;

.field private mContext:Landroid/content/Context;

.field private mSelfBrowserViewCallback:Lcom/iflytek/viafly/browser/BrowserViewCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/viafly/browser/IBrowserPageAbility;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ability"    # Lcom/iflytek/viafly/browser/IBrowserPageAbility;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->last_click_time:J

    .line 415
    new-instance v0, Lcom/iflytek/viafly/browser/BrowserComponent$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/browser/BrowserComponent$1;-><init>(Lcom/iflytek/viafly/browser/BrowserComponent;)V

    iput-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mSelfBrowserViewCallback:Lcom/iflytek/viafly/browser/BrowserViewCallback;

    .line 69
    iput-object p1, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserPageAbility:Lcom/iflytek/viafly/browser/IBrowserPageAbility;

    .line 71
    invoke-virtual {p0}, Lcom/iflytek/viafly/browser/BrowserComponent;->init()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/viafly/browser/BrowserComponent;)Lcom/iflytek/viafly/browser/IBrowserConnection;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/browser/BrowserComponent;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserConnection:Lcom/iflytek/viafly/browser/IBrowserConnection;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iflytek/viafly/browser/BrowserComponent;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/browser/BrowserComponent;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iflytek/viafly/browser/BrowserComponent;)Lcom/iflytek/viafly/browser/BrowserView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/browser/BrowserComponent;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/iflytek/viafly/browser/BrowserComponent;)Lcom/iflytek/viafly/browser/IBrowserPageAbility;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/browser/BrowserComponent;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserPageAbility:Lcom/iflytek/viafly/browser/IBrowserPageAbility;

    return-object v0
.end method

.method private isInJSInterfaceWhiteList(Ljava/lang/String;)Z
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 168
    const-string/jumbo v4, "BrowserComponent"

    const-string/jumbo v5, "JSInterfaceWhiteList----JSINTERFACE_DEBUG_WHITELIST_SWITCH : false"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v2, 0x0

    .line 173
    .local v2, "isNeedAdd":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v3

    .line 177
    :cond_1
    const-string/jumbo v4, "javascript:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 180
    invoke-static {p1}, Lazk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "host":Ljava/lang/String;
    const-string/jumbo v4, "BrowserComponent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "JSInterfaceWhiteList----url is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", host is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 185
    invoke-static {}, Lagv;->a()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 186
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-static {}, Lagv;->a()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 187
    invoke-static {}, Lagv;->a()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 188
    const/4 v2, 0x1

    .end local v1    # "i":I
    :cond_2
    move v3, v2

    .line 194
    goto :goto_0

    .line 186
    .restart local v1    # "i":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isParamLegal(Lcom/iflytek/viafly/browser/BrowserParams;)Z
    .locals 1
    .param p1, "browserParams"    # Lcom/iflytek/viafly/browser/BrowserParams;

    .prologue
    .line 202
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseIntent(Landroid/content/Intent;)Z
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 94
    const-string/jumbo v9, "BrowserComponent"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "parseIntent(), intent = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    if-nez p1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v7

    .line 102
    :cond_1
    const-string/jumbo v9, "com.iflytek.cmccbrowser.EXTRA_BREIF_ITEM"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/browser/BrowserParams;

    .line 105
    .local v2, "browserParams":Lcom/iflytek/viafly/browser/BrowserParams;
    invoke-direct {p0, v2}, Lcom/iflytek/viafly/browser/BrowserComponent;->isParamLegal(Lcom/iflytek/viafly/browser/BrowserParams;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 106
    iget-object v7, v2, Lcom/iflytek/viafly/browser/BrowserParams;->info:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "redirectIMOnlineWap"

    iget-object v9, v2, Lcom/iflytek/viafly/browser/BrowserParams;->info:Ljava/lang/String;

    invoke-static {v7, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "redirectTranslateEntryOnlineWap"

    iget-object v9, v2, Lcom/iflytek/viafly/browser/BrowserParams;->info:Ljava/lang/String;

    invoke-static {v7, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    iget-object v7, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    if-eqz v7, :cond_3

    .line 108
    iget-object v7, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-virtual {v7}, Lcom/iflytek/viafly/browser/BrowserView;->getBrowserTitleBar()Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 109
    iget-object v7, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-virtual {v7}, Lcom/iflytek/viafly/browser/BrowserView;->getBrowserTitleBar()Lcom/iflytek/base/skin/customView/XLinearLayout;

    move-result-object v7

    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Lcom/iflytek/base/skin/customView/XLinearLayout;->setVisibility(I)V

    .line 113
    :cond_3
    iget-object v7, v2, Lcom/iflytek/viafly/browser/BrowserParams;->titleText:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 114
    iget-object v7, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    iget-object v9, v2, Lcom/iflytek/viafly/browser/BrowserParams;->titleText:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/iflytek/viafly/browser/BrowserView;->setBrowserTitle(Ljava/lang/String;)V

    .line 118
    :cond_4
    iget-object v7, v2, Lcom/iflytek/viafly/browser/BrowserParams;->browserConnectionClass:Ljava/lang/Class;

    if-eqz v7, :cond_6

    .line 119
    const-string/jumbo v7, "BrowserComponent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "browserConnectionClass = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Lcom/iflytek/viafly/browser/BrowserParams;->browserConnectionClass:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v1, 0x0

    .line 122
    .local v1, "browserConnection":Lcom/iflytek/viafly/browser/IBrowserConnection;
    :try_start_0
    iget-object v7, v2, Lcom/iflytek/viafly/browser/BrowserParams;->browserConnectionClass:Ljava/lang/Class;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 123
    .local v5, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/iflytek/viafly/browser/IBrowserConnection;>;"
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 124
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/iflytek/viafly/browser/IBrowserConnection;

    move-object v1, v0

    .line 125
    if-eqz v1, :cond_5

    .line 126
    const-string/jumbo v7, "BrowserComponent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mBrowserConnection = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v7, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserPageAbility:Lcom/iflytek/viafly/browser/IBrowserPageAbility;

    iget-object v9, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-interface {v1, v7, v9, p1}, Lcom/iflytek/viafly/browser/IBrowserConnection;->onInit(Lcom/iflytek/viafly/browser/IBrowserPageAbility;Lcom/iflytek/viafly/browser/BrowserView;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v5    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/iflytek/viafly/browser/IBrowserConnection;>;"
    :cond_5
    :goto_1
    iput-object v1, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserConnection:Lcom/iflytek/viafly/browser/IBrowserConnection;

    .line 135
    .end local v1    # "browserConnection":Lcom/iflytek/viafly/browser/IBrowserConnection;
    :cond_6
    const/4 v3, 0x0

    .line 136
    .local v3, "browserViewComponents":Lcom/iflytek/viafly/browser/BrowserViewComponents;
    iget-object v7, v2, Lcom/iflytek/viafly/browser/BrowserParams;->browserViewComponents:Ljava/lang/Class;

    if-eqz v7, :cond_7

    .line 138
    :try_start_1
    iget-object v7, v2, Lcom/iflytek/viafly/browser/BrowserParams;->browserViewComponents:Ljava/lang/Class;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 139
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/iflytek/viafly/browser/BrowserViewComponents;>;"
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 140
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/iflytek/viafly/browser/BrowserViewComponents;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/iflytek/viafly/browser/BrowserViewComponents;>;"
    :cond_7
    :goto_2
    if-nez v3, :cond_8

    .line 147
    new-instance v3, Lcom/iflytek/viafly/browser/BrowserViewComponents;

    .end local v3    # "browserViewComponents":Lcom/iflytek/viafly/browser/BrowserViewComponents;
    invoke-direct {v3}, Lcom/iflytek/viafly/browser/BrowserViewComponents;-><init>()V

    .line 149
    .restart local v3    # "browserViewComponents":Lcom/iflytek/viafly/browser/BrowserViewComponents;
    :cond_8
    iput-object v3, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserViewComponents:Lcom/iflytek/viafly/browser/BrowserViewComponents;

    .line 150
    iget-object v7, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserPageAbility:Lcom/iflytek/viafly/browser/IBrowserPageAbility;

    invoke-interface {v7}, Lcom/iflytek/viafly/browser/IBrowserPageAbility;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v9, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-virtual {v3, v7, v9}, Lcom/iflytek/viafly/browser/BrowserViewComponents;->onCreate(Landroid/app/Activity;Lcom/iflytek/viafly/browser/BrowserView;)V

    .line 154
    iget-object v7, v2, Lcom/iflytek/viafly/browser/BrowserParams;->url:Ljava/lang/String;

    if-eqz v7, :cond_a

    .line 155
    iget-object v7, v2, Lcom/iflytek/viafly/browser/BrowserParams;->url:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/iflytek/viafly/browser/BrowserComponent;->isInJSInterfaceWhiteList(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 156
    iget-object v7, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    const-string/jumbo v9, "browserView"

    invoke-virtual {v7, v9, v3}, Lcom/iflytek/viafly/browser/BrowserView;->addJsInterface(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    :cond_9
    iget-object v7, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    iget-object v9, v2, Lcom/iflytek/viafly/browser/BrowserParams;->url:Ljava/lang/String;

    iget-object v10, v2, Lcom/iflytek/viafly/browser/BrowserParams;->postData:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Lcom/iflytek/viafly/browser/BrowserView;->loadUrlPage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    move v7, v8

    .line 162
    goto/16 :goto_0

    .line 129
    .end local v3    # "browserViewComponents":Lcom/iflytek/viafly/browser/BrowserViewComponents;
    .restart local v1    # "browserConnection":Lcom/iflytek/viafly/browser/IBrowserConnection;
    :catch_0
    move-exception v6

    .line 130
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "BrowserComponent"

    const-string/jumbo v9, "parseIntent()"

    invoke-static {v7, v9, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 141
    .end local v1    # "browserConnection":Lcom/iflytek/viafly/browser/IBrowserConnection;
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v3    # "browserViewComponents":Lcom/iflytek/viafly/browser/BrowserViewComponents;
    :catch_1
    move-exception v6

    .line 142
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "BrowserComponent"

    const-string/jumbo v9, "parseIntent()"

    invoke-static {v7, v9, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method


# virtual methods
.method public addJsInterface(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "interfaceObject"    # Ljava/lang/Object;

    .prologue
    .line 509
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/browser/BrowserView;->addJsInterface(Ljava/lang/String;Ljava/lang/Object;)V

    .line 510
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserPageAbility:Lcom/iflytek/viafly/browser/IBrowserPageAbility;

    invoke-interface {v0}, Lcom/iflytek/viafly/browser/IBrowserPageAbility;->getPageTitleBarView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 375
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserPageAbility:Lcom/iflytek/viafly/browser/IBrowserPageAbility;

    invoke-interface {v1}, Lcom/iflytek/viafly/browser/IBrowserPageAbility;->getPageTitleBarView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserPageAbility:Lcom/iflytek/viafly/browser/IBrowserPageAbility;

    invoke-interface {v0}, Lcom/iflytek/viafly/browser/IBrowserPageAbility;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserPageAbility:Lcom/iflytek/viafly/browser/IBrowserPageAbility;

    invoke-interface {v1}, Lcom/iflytek/viafly/browser/IBrowserPageAbility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/util/UIUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 377
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/browser/BrowserView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/browser/BrowserView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/browser/BrowserView;->requestFocus()Z

    .line 379
    const-string/jumbo v0, "BrowserComponent"

    const-string/jumbo v1, "-------->> dispatchTouchEvent()|mSurfBrowserView get focus"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBrowserView()Landroid/view/View;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    return-object v0
.end method

.method public getWebSettings()Landroid/webkit/WebSettings;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/browser/BrowserView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 75
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/iflytek/viafly/browser/BrowserView;

    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/browser/BrowserView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    .line 77
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/browser/BrowserView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/browser/BrowserView;->setGravity(I)V

    .line 79
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mSelfBrowserViewCallback:Lcom/iflytek/viafly/browser/BrowserViewCallback;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/browser/BrowserView;->setBrowserViewCallback(Lcom/iflytek/viafly/browser/BrowserViewCallback;)V

    .line 80
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    new-instance v1, Lcom/iflytek/viafly/browser/BrowserComponent$MyDownloadListener;

    invoke-direct {v1, p0}, Lcom/iflytek/viafly/browser/BrowserComponent$MyDownloadListener;-><init>(Lcom/iflytek/viafly/browser/BrowserComponent;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/browser/BrowserView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 82
    :cond_0
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/browser/BrowserView;->loadUrl(Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 359
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserConnection:Lcom/iflytek/viafly/browser/IBrowserConnection;

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserConnection:Lcom/iflytek/viafly/browser/IBrowserConnection;

    invoke-interface {v1, p1, p2, p3}, Lcom/iflytek/viafly/browser/IBrowserConnection;->onActivityResult(IILandroid/content/Intent;)V

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    iget-object v1, v1, Lcom/iflytek/viafly/browser/BrowserView;->imHelper:Lcom/iflytek/viafly/im/IMHelper;

    if-eqz v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    iget-object v1, v1, Lcom/iflytek/viafly/browser/BrowserView;->imHelper:Lcom/iflytek/viafly/im/IMHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/iflytek/viafly/im/IMHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    if-eqz v1, :cond_2

    const/16 v1, 0x7d4

    if-ne p1, v1, :cond_2

    .line 367
    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    const-class v2, Lcom/iflytek/framework/business/components/PicComponents;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/browser/BrowserView;->getComponents(Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/Components;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/business/components/PicComponents;

    .line 368
    .local v0, "businessComponent":Lcom/iflytek/framework/business/components/PicComponents;
    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/framework/business/components/PicComponents;->onActivityResult(IILandroid/content/Intent;)V

    .line 370
    .end local v0    # "businessComponent":Lcom/iflytek/framework/business/components/PicComponents;
    :cond_2
    return-void
.end method

.method public onClickTitleLeftButton()Z
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserConnection:Lcom/iflytek/viafly/browser/IBrowserConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserConnection:Lcom/iflytek/viafly/browser/IBrowserConnection;

    invoke-interface {v0}, Lcom/iflytek/viafly/browser/IBrowserConnection;->onClickTitleLeftButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    const/4 v0, 0x1

    .line 403
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 408
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 409
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/browser/BrowserView;->requestFocus()Z

    .line 413
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/browser/BrowserComponent;->parseIntent(Landroid/content/Intent;)Z

    .line 396
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 305
    const-string/jumbo v0, "BrowserComponent"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserConnection:Lcom/iflytek/viafly/browser/IBrowserConnection;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserConnection:Lcom/iflytek/viafly/browser/IBrowserConnection;

    invoke-interface {v0}, Lcom/iflytek/viafly/browser/IBrowserConnection;->onDestroy()V

    .line 308
    iput-object v2, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserConnection:Lcom/iflytek/viafly/browser/IBrowserConnection;

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserViewComponents:Lcom/iflytek/viafly/browser/BrowserViewComponents;

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserViewComponents:Lcom/iflytek/viafly/browser/BrowserViewComponents;

    invoke-virtual {v0}, Lcom/iflytek/viafly/browser/BrowserViewComponents;->onDestroy()V

    .line 313
    iput-object v2, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserViewComponents:Lcom/iflytek/viafly/browser/BrowserViewComponents;

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/browser/BrowserView;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/browser/BrowserView;->onDestroy()V

    .line 320
    iput-object v2, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    .line 322
    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 331
    .local v0, "now":J
    iget-wide v4, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->last_click_time:J

    sub-long v4, v0, v4

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    .line 332
    iput-wide v6, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->last_click_time:J

    .line 337
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->last_click_time:J

    .line 338
    const-string/jumbo v3, "BrowserComponent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onKeyDown() key DOWN,keyCode is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v3, 0x4

    if-ne p1, v3, :cond_5

    .line 342
    iget-object v3, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserConnection:Lcom/iflytek/viafly/browser/IBrowserConnection;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserConnection:Lcom/iflytek/viafly/browser/IBrowserConnection;

    invoke-interface {v3, p1, p2}, Lcom/iflytek/viafly/browser/IBrowserConnection;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 354
    :cond_1
    :goto_0
    return v2

    .line 333
    :cond_2
    iget-wide v4, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->last_click_time:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1f4

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 334
    const-string/jumbo v3, "BrowserComponent"

    const-string/jumbo v4, "onKeyDown() key DOWN-------------------->> Click too much!"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 345
    :cond_3
    iget-object v3, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/browser/BrowserView;->handleKeyBackEvent()Z

    move-result v3

    if-nez v3, :cond_1

    .line 354
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 350
    :cond_5
    iget-object v3, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserConnection:Lcom/iflytek/viafly/browser/IBrowserConnection;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserConnection:Lcom/iflytek/viafly/browser/IBrowserConnection;

    invoke-interface {v3, p1, p2}, Lcom/iflytek/viafly/browser/IBrowserConnection;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 388
    const-string/jumbo v0, "isFromNotification"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/browser/BrowserComponent;->parseIntent(Landroid/content/Intent;)Z

    .line 391
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/browser/BrowserView;->pauseTimers()V

    .line 288
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserConnection:Lcom/iflytek/viafly/browser/IBrowserConnection;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserConnection:Lcom/iflytek/viafly/browser/IBrowserConnection;

    invoke-interface {v0}, Lcom/iflytek/viafly/browser/IBrowserConnection;->onPause()V

    .line 291
    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserConnection:Lcom/iflytek/viafly/browser/IBrowserConnection;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserConnection:Lcom/iflytek/viafly/browser/IBrowserConnection;

    invoke-interface {v0}, Lcom/iflytek/viafly/browser/IBrowserConnection;->onRestart()V

    .line 274
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/browser/BrowserView;->resumeTimers()V

    .line 279
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/browser/BrowserView;->enablePlatformNotifications()V

    .line 280
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserConnection:Lcom/iflytek/viafly/browser/IBrowserConnection;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserConnection:Lcom/iflytek/viafly/browser/IBrowserConnection;

    invoke-interface {v0}, Lcom/iflytek/viafly/browser/IBrowserConnection;->onResume()V

    .line 283
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserConnection:Lcom/iflytek/viafly/browser/IBrowserConnection;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserConnection:Lcom/iflytek/viafly/browser/IBrowserConnection;

    invoke-interface {v0}, Lcom/iflytek/viafly/browser/IBrowserConnection;->onStart()V

    .line 267
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/browser/BrowserView;->disablePlatformNotifications()V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserConnection:Lcom/iflytek/viafly/browser/IBrowserConnection;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserConnection:Lcom/iflytek/viafly/browser/IBrowserConnection;

    invoke-interface {v0}, Lcom/iflytek/viafly/browser/IBrowserConnection;->onStop()V

    .line 301
    :cond_1
    return-void
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postData"    # [B

    .prologue
    .line 501
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/browser/BrowserView;->postUrl(Ljava/lang/String;[B)V

    .line 502
    return-void
.end method

.method public setIsShowProgressBar(Z)V
    .locals 1
    .param p1, "isShowProgressBar"    # Z

    .prologue
    .line 513
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/browser/BrowserView;->setShowProgressBar(Z)V

    .line 514
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1
    .param p1, "client"    # Landroid/webkit/WebChromeClient;

    .prologue
    .line 521
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/browser/BrowserView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 522
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1
    .param p1, "client"    # Landroid/webkit/WebViewClient;

    .prologue
    .line 517
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserComponent;->mBrowserView:Lcom/iflytek/viafly/browser/BrowserView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/browser/BrowserView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 518
    return-void
.end method
