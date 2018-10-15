.class public Lacf;
.super Ljava/lang/Object;
.source "BaseOperationDataInDial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lacf$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Landroid/content/Intent;

.field private d:B

.field private e:I

.field private f:Lacf$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lacf;->b:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lacf;->e:I

    return-void
.end method


# virtual methods
.method public a(Lacf$a;)V
    .locals 0
    .param p1, "pScenceCancelListener"    # Lacf$a;

    .prologue
    .line 111
    iput-object p1, p0, Lacf;->f:Lacf$a;

    .line 112
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 0
    .param p1, "mSpeechIntent"    # Landroid/content/Intent;

    .prologue
    .line 79
    iput-object p1, p0, Lacf;->c:Landroid/content/Intent;

    .line 80
    return-void
.end method

.method public b(I)V
    .locals 0
    .param p1, "pScenceState"    # I

    .prologue
    .line 63
    iput p1, p0, Lacf;->b:I

    .line 64
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "mFocus"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lacf;->a:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public c(I)V
    .locals 0
    .param p1, "mRetryCount"    # I

    .prologue
    .line 103
    iput p1, p0, Lacf;->e:I

    .line 104
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lacf;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lacf;->b:I

    return v0
.end method

.method public i()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lacf;->c:Landroid/content/Intent;

    return-object v0
.end method

.method public j()B
    .locals 1

    .prologue
    .line 83
    iget-byte v0, p0, Lacf;->d:B

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lacf;->e:I

    return v0
.end method

.method public l()Lacf$a;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lacf;->f:Lacf$a;

    return-object v0
.end method
