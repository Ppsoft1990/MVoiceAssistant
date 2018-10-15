.class public Laei;
.super Laee;
.source "QuestionMessage.java"


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
    iput-object p1, p0, Laei;->a:Ljava/lang/String;

    .line 14
    return-void
.end method
