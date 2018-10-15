.class public Laks;
.super Ljava/lang/Object;
.source "FoodCardData.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Laks;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "mScoring"    # I

    .prologue
    .line 41
    iput p1, p0, Laks;->d:I

    .line 42
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Laks;->a:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Laks;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "mRestaurantName"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Laks;->c:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Laks;->d:I

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Laks;->b:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Laks;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDistance"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Laks;->e:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Laks;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUrl"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Laks;->f:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Laks;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPicUrl"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Laks;->g:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Laks;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .param p1, "mIncome"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Laks;->h:Ljava/lang/String;

    .line 90
    return-void
.end method
