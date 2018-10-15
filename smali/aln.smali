.class public Laln;
.super Lajj;
.source "SchedulePresenter.java"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentId"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Lajj;-><init>()V

    .line 19
    iput-object p1, p0, Laln;->b:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Laln;->c:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lail;)V
    .locals 0
    .param p1, "resultListener"    # Lail;

    .prologue
    .line 31
    return-void
.end method

.method protected g()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method protected h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Schedule"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laln;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
