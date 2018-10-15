.class public Laef;
.super Laee;
.source "CommonMessage.java"


# instance fields
.field public a:I

.field public e:Ljava/lang/String;

.field private f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Laee;-><init>()V

    .line 17
    iput-object p1, p0, Laef;->e:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 25
    iput-object p1, p0, Laef;->f:Ljava/lang/Runnable;

    .line 26
    return-void
.end method

.method public b()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Laef;->f:Ljava/lang/Runnable;

    return-object v0
.end method
