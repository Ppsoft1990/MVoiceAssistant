.class public Laey;
.super Laee;
.source "BaikeMessage.java"


# instance fields
.field public a:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Laee;-><init>()V

    .line 18
    iput-object p1, p0, Laey;->a:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Laey;->e:Ljava/lang/String;

    .line 20
    return-void
.end method
