.class public Lcom/iflytek/framework/ui/share/ShareEvent;
.super Ljava/lang/Object;
.source "ShareEvent.java"


# instance fields
.field private code:I

.field private packageName:Ljava/lang/String;

.field private transaction:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "transaction"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/iflytek/framework/ui/share/ShareEvent;->code:I

    .line 16
    iput-object p2, p0, Lcom/iflytek/framework/ui/share/ShareEvent;->packageName:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/iflytek/framework/ui/share/ShareEvent;->transaction:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/iflytek/framework/ui/share/ShareEvent;->code:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/ShareEvent;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTransaction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/ShareEvent;->transaction:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/iflytek/framework/ui/share/ShareEvent;->code:I

    .line 26
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/iflytek/framework/ui/share/ShareEvent;->packageName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setTransaction(Ljava/lang/String;)V
    .locals 0
    .param p1, "transaction"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/iflytek/framework/ui/share/ShareEvent;->transaction:Ljava/lang/String;

    .line 42
    return-void
.end method
