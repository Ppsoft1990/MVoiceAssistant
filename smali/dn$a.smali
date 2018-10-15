.class Ldn$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:D

.field b:D

.field final synthetic c:Ldn;


# direct methods
.method constructor <init>(Ldn;DD)V
    .locals 0

    iput-object p1, p0, Ldn$a;->c:Ldn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Ldn$a;->a:D

    iput-wide p4, p0, Ldn$a;->b:D

    return-void
.end method
