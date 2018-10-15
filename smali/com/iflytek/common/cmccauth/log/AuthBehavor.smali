.class public Lcom/iflytek/common/cmccauth/log/AuthBehavor;
.super Ljava/lang/Object;
.source "AuthBehavor.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;
    }
.end annotation


# static fields
.field private static final KEY_DESC:Ljava/lang/String; = "i_desc"

.field private static final KEY_SCENE:Ljava/lang/String; = "i_scene"

.field private static final KEY_SMS:Ljava/lang/String; = "i_smsresult"

.field private static final KEY_STATE:Ljava/lang/String; = "i_state"

.field private static final KEY_TYPE:Ljava/lang/String; = "i_type"


# instance fields
.field private mAuthDesc:Ljava/lang/String;

.field private mAuthScene:Lcom/iflytek/common/cmccauth/log/AuthScene;

.field private mAuthState:I

.field private mAuthType:I

.field private mSmsAuthState:Lcom/iflytek/common/cmccauth/log/SmsAuthState;


# direct methods
.method private constructor <init>(Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;)V
    .locals 1
    .param p1, "builder"    # Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0x64

    iput v0, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor;->mAuthType:I

    .line 37
    invoke-static {p1}, Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;->a(Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor;->mAuthState:I

    .line 38
    invoke-static {p1}, Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;->b(Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;)I

    move-result v0

    iput v0, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor;->mAuthType:I

    .line 39
    invoke-static {p1}, Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;->c(Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;)Lcom/iflytek/common/cmccauth/log/AuthScene;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor;->mAuthScene:Lcom/iflytek/common/cmccauth/log/AuthScene;

    .line 40
    invoke-static {p1}, Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;->d(Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor;->mAuthDesc:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;->e(Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;)Lcom/iflytek/common/cmccauth/log/SmsAuthState;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor;->mSmsAuthState:Lcom/iflytek/common/cmccauth/log/SmsAuthState;

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;Lcom/iflytek/common/cmccauth/log/AuthBehavor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;
    .param p2, "x1"    # Lcom/iflytek/common/cmccauth/log/AuthBehavor$1;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/iflytek/common/cmccauth/log/AuthBehavor;-><init>(Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;)V

    return-void
.end method


# virtual methods
.method public getAuthDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor;->mAuthDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthScene()Lcom/iflytek/common/cmccauth/log/AuthScene;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor;->mAuthScene:Lcom/iflytek/common/cmccauth/log/AuthScene;

    return-object v0
.end method

.method public getAuthState()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor;->mAuthState:I

    return v0
.end method

.method public getAuthType()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor;->mAuthType:I

    return v0
.end method

.method public getSmsAuthState()Lcom/iflytek/common/cmccauth/log/SmsAuthState;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor;->mSmsAuthState:Lcom/iflytek/common/cmccauth/log/SmsAuthState;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AuthBehavor{mAuthScene="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor;->mAuthScene:Lcom/iflytek/common/cmccauth/log/AuthScene;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAuthType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor;->mAuthType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAuthState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor;->mAuthState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAuthDesc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor;->mAuthDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSmsAuthState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor;->mSmsAuthState:Lcom/iflytek/common/cmccauth/log/SmsAuthState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transferOpLog()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 122
    .local v0, "logMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget v3, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor;->mAuthType:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_3

    .line 123
    const-string/jumbo v3, "i_type"

    const-string/jumbo v4, "net_gettoken"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :goto_0
    const-string/jumbo v3, "i_state"

    iget v4, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor;->mAuthState:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v3, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor;->mAuthScene:Lcom/iflytek/common/cmccauth/log/AuthScene;

    if-eqz v3, :cond_0

    .line 129
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor;->mAuthScene:Lcom/iflytek/common/cmccauth/log/AuthScene;

    invoke-virtual {v3}, Lcom/iflytek/common/cmccauth/log/AuthScene;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 130
    .local v1, "scene":Ljava/lang/String;
    const-string/jumbo v3, "i_scene"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .end local v1    # "scene":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor;->mSmsAuthState:Lcom/iflytek/common/cmccauth/log/SmsAuthState;

    if-eqz v3, :cond_1

    .line 133
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor;->mSmsAuthState:Lcom/iflytek/common/cmccauth/log/SmsAuthState;

    invoke-virtual {v3}, Lcom/iflytek/common/cmccauth/log/SmsAuthState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 134
    .local v2, "smsAuthState":Ljava/lang/String;
    const-string/jumbo v3, "i_smsresult"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .end local v2    # "smsAuthState":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor;->mAuthDesc:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 137
    const-string/jumbo v3, "i_desc"

    iget-object v4, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor;->mAuthDesc:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_2
    return-object v0

    .line 125
    :cond_3
    const-string/jumbo v3, "i_type"

    const-string/jumbo v4, "sms_querytoken"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
