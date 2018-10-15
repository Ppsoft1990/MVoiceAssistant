.class public Lalv;
.super Ljava/lang/Object;
.source "SignEvent.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string/jumbo v0, "SignEvent"

    iput-object v0, p0, Lalv;->a:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lalv;->b:Ljava/lang/String;

    .line 16
    return-void
.end method
