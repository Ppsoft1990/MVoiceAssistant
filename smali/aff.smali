.class public Laff;
.super Laee;
.source "JokeMessage.java"


# instance fields
.field public a:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field private f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "moreUrl"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Laee;-><init>()V

    .line 22
    iput-object p1, p0, Laff;->a:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Laff;->e:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 31
    iput-object p1, p0, Laff;->f:Ljava/lang/Runnable;

    .line 32
    return-void
.end method

.method public b()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Laff;->f:Ljava/lang/Runnable;

    return-object v0
.end method
