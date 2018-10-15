.class public Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;
.super Ljava/lang/Object;
.source "AuthBehavor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/common/cmccauth/log/AuthBehavor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/iflytek/common/cmccauth/log/AuthScene;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lcom/iflytek/common/cmccauth/log/SmsAuthState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/16 v0, 0x64

    iput v0, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;->b:I

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;

    .prologue
    .line 64
    iget v0, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;->c:I

    return v0
.end method

.method static synthetic b(Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;

    .prologue
    .line 64
    iget v0, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;->b:I

    return v0
.end method

.method static synthetic c(Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;)Lcom/iflytek/common/cmccauth/log/AuthScene;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;->a:Lcom/iflytek/common/cmccauth/log/AuthScene;

    return-object v0
.end method

.method static synthetic d(Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;)Lcom/iflytek/common/cmccauth/log/SmsAuthState;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;->e:Lcom/iflytek/common/cmccauth/log/SmsAuthState;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;
    .locals 0
    .param p1, "authType"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;->b:I

    .line 86
    return-object p0
.end method

.method public a(Lcom/iflytek/common/cmccauth/log/AuthScene;)Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;
    .locals 0
    .param p1, "authScene"    # Lcom/iflytek/common/cmccauth/log/AuthScene;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;->a:Lcom/iflytek/common/cmccauth/log/AuthScene;

    .line 81
    return-object p0
.end method

.method public a(Lcom/iflytek/common/cmccauth/log/SmsAuthState;)Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;
    .locals 0
    .param p1, "smsAuthState"    # Lcom/iflytek/common/cmccauth/log/SmsAuthState;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;->e:Lcom/iflytek/common/cmccauth/log/SmsAuthState;

    .line 101
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;
    .locals 0
    .param p1, "authDesc"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;->d:Ljava/lang/String;

    .line 96
    return-object p0
.end method

.method public a()Lcom/iflytek/common/cmccauth/log/AuthBehavor;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lcom/iflytek/common/cmccauth/log/AuthBehavor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/common/cmccauth/log/AuthBehavor;-><init>(Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;Lcom/iflytek/common/cmccauth/log/AuthBehavor$1;)V

    return-object v0
.end method

.method public b(I)Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;
    .locals 0
    .param p1, "authState"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/iflytek/common/cmccauth/log/AuthBehavor$a;->c:I

    .line 91
    return-object p0
.end method
