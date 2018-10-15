.class public abstract Lcom/iflytek/common/adaptation/call/AbsCallAdapter;
.super Ljava/lang/Object;
.source "AbsCallAdapter.java"

# interfaces
.implements Lcom/iflytek/common/adaptation/ICallAdaptation;


# instance fields
.field private mActions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected simInfoAdapter:Lcom/iflytek/common/adaptation/ISimInfoAdaptation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/iflytek/common/adaptation/call/AbsCallAdapter;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/iflytek/common/adaptation/call/AbsCallAdapter;->simInfoAdapter:Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .line 34
    return-void
.end method


# virtual methods
.method public abstract detect()Z
.end method

.method public endCall(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    iget-object v4, p0, Lcom/iflytek/common/adaptation/call/AbsCallAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    .line 89
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 91
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    :try_start_0
    const-class v4, Landroid/telephony/TelephonyManager;

    const-string/jumbo v5, "getITelephony"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-static {v4, v5, v6}, Lcom/iflytek/common/adaptation/util/BeanUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 93
    .local v2, "mdGetITelephony":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/iflytek/common/adaptation/util/BeanUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ITelephony;

    .line 95
    .local v1, "mTelephony":Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v1    # "mTelephony":Lcom/android/internal/telephony/ITelephony;
    .end local v2    # "mdGetITelephony":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final getActions()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 50
    .local v0, "actions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string/jumbo v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    const-string/jumbo v1, "android.intent.action.PHONE_STATE_2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    const-string/jumbo v1, "android.intent.action.PHONE_STATE2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    const-string/jumbo v1, "android.intent.action.PHONE_STATE_EXT"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    const-string/jumbo v1, "android.intent.action.DUAL_PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/iflytek/common/adaptation/call/AbsCallAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getDialIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    const-string/jumbo v1, "tel"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 70
    :cond_0
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 73
    return-object v0
.end method

.method public final isPhoneAction(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/iflytek/common/adaptation/call/AbsCallAdapter;->mActions:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/call/AbsCallAdapter;->getActions()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/adaptation/call/AbsCallAdapter;->mActions:Ljava/util/HashSet;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/iflytek/common/adaptation/call/AbsCallAdapter;->mActions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/iflytek/common/adaptation/call/AbsCallAdapter;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method
