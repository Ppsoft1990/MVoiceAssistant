.class Lpt$b;
.super Ljava/lang/Object;
.source "HttpTestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field final synthetic e:Lpt;


# direct methods
.method private constructor <init>(Lpt;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lpt$b;->e:Lpt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lpt;Lpt$1;)V
    .locals 0
    .param p1, "x0"    # Lpt;
    .param p2, "x1"    # Lpt$1;

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lpt$b;-><init>(Lpt;)V

    return-void
.end method
