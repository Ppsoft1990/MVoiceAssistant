.class final Lauthcommon/ah;
.super Ljava/util/TimerTask;
.source "AbstractBaseSSO.java"


# instance fields
.field private synthetic a:Lauthcommon/ag;


# direct methods
.method constructor <init>(Lauthcommon/ag;)V
    .locals 0

    iput-object p1, p0, Lauthcommon/ah;->a:Lauthcommon/ag;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lauthcommon/ah;->a:Lauthcommon/ag;

    const v1, 0x18ed6

    invoke-virtual {v0, v1, v2}, Lauthcommon/ag;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lauthcommon/ah;->a:Lauthcommon/ag;

    iput-object v2, v0, Lauthcommon/ag;->f:Lauthcommon/ae$a;

    return-void
.end method
