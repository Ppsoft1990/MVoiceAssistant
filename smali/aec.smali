.class public Laec;
.super Laee;
.source "AnswerMessage.java"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Laee;-><init>()V

    .line 13
    iput-object p1, p0, Laec;->a:Ljava/lang/String;

    .line 14
    return-void
.end method
