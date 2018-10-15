.class public Lcom/iflytek/viafly/settings/ui/CardsMgrActivity;
.super Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;
.source "CardsMgrActivity.java"


# static fields
.field public static final INTENT_CARDS_DATA_KEY:Ljava/lang/String; = "cards_list"


# instance fields
.field private mCardsInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/settings/ui/CardInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/CardsMgrActivity;->mCardsInfoList:Ljava/util/List;

    return-void
.end method

.method private performIntent(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 72
    :goto_0
    return-void

    .line 49
    :cond_0
    :try_start_0
    const-string/jumbo v8, "cards_list"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 50
    .local v7, "str":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrActivity;->finish()V

    .line 53
    :cond_1
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 54
    .local v3, "jsonArray":Lorg/json/JSONArray;
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/CardsMgrActivity;->mCardsInfoList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 56
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 57
    .local v5, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 58
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 59
    .local v4, "jsonObject":Lorg/json/JSONObject;
    new-instance v0, Lcom/iflytek/viafly/settings/ui/CardInfo;

    invoke-direct {v0}, Lcom/iflytek/viafly/settings/ui/CardInfo;-><init>()V

    .line 61
    .local v0, "cardInfo":Lcom/iflytek/viafly/settings/ui/CardInfo;
    const-string/jumbo v8, "id"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/iflytek/viafly/settings/ui/CardInfo;->setCardId(Ljava/lang/String;)V

    .line 62
    const-string/jumbo v8, "name"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/iflytek/viafly/settings/ui/CardInfo;->setCardName(Ljava/lang/String;)V

    .line 63
    const-string/jumbo v8, "show"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v0, v8}, Lcom/iflytek/viafly/settings/ui/CardInfo;->setCardState(Z)V

    .line 64
    iget-object v8, p0, Lcom/iflytek/viafly/settings/ui/CardsMgrActivity;->mCardsInfoList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 67
    .end local v0    # "cardInfo":Lcom/iflytek/viafly/settings/ui/CardInfo;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrActivity;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v6

    .line 68
    .local v6, "mediator":Lcom/iflytek/yd/ui/FragmentMediator;
    new-instance v8, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;

    invoke-direct {v8}, Lcom/iflytek/viafly/settings/ui/CardsMgrFragment;-><init>()V

    invoke-virtual {v6, p0, v8}, Lcom/iflytek/yd/ui/FragmentMediator;->addFragment(Landroid/support/v4/app/FragmentActivity;Lcom/iflytek/yd/ui/BaseFragment;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "length":I
    .end local v6    # "mediator":Lcom/iflytek/yd/ui/FragmentMediator;
    .end local v7    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrActivity;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v0

    .line 77
    .local v0, "mediator":Lcom/iflytek/yd/ui/FragmentMediator;
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->peek()Lcom/iflytek/yd/ui/BaseFragment;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iflytek/yd/ui/BaseFragment;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 80
    :cond_0
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrActivity;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v0

    .line 110
    .local v0, "mediator":Lcom/iflytek/yd/ui/FragmentMediator;
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->peek()Lcom/iflytek/yd/ui/BaseFragment;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iflytek/yd/ui/BaseFragment;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 113
    :cond_0
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public getCardsInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/settings/ui/CardInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CardsMgrActivity;->mCardsInfoList:Ljava/util/List;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/settings/ui/CardsMgrActivity;->performIntent(Landroid/content/Intent;)V

    .line 32
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 85
    const/4 v1, 0x0

    .line 86
    .local v1, "intercepted":Z
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrActivity;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v0

    .line 87
    .local v0, "fragmentMediator":Lcom/iflytek/yd/ui/FragmentMediator;
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->peek()Lcom/iflytek/yd/ui/BaseFragment;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/iflytek/yd/ui/BaseFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 91
    :cond_0
    if-eqz v1, :cond_1

    .line 92
    const/4 v2, 0x1

    .line 95
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrActivity;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v0

    .line 101
    .local v0, "mediator":Lcom/iflytek/yd/ui/FragmentMediator;
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->peek()Lcom/iflytek/yd/ui/BaseFragment;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/iflytek/yd/ui/BaseFragment;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 104
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/settings/ui/CardsMgrActivity;->performIntent(Landroid/content/Intent;)V

    .line 38
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/iflytek/viafly/settings/ui/CardsMgrActivity;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v0

    .line 119
    .local v0, "mediator":Lcom/iflytek/yd/ui/FragmentMediator;
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    invoke-virtual {v0}, Lcom/iflytek/yd/ui/FragmentMediator;->peek()Lcom/iflytek/yd/ui/BaseFragment;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iflytek/yd/ui/BaseFragment;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 122
    :cond_0
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method
