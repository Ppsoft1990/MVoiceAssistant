.class final Lauthcommon/af;
.super Ljava/util/TimerTask;
.source "AbstractBasePostHttp.java"


# instance fields
.field private synthetic a:Lauthcommon/ae;


# direct methods
.method constructor <init>(Lauthcommon/ae;)V
    .locals 0

    iput-object p1, p0, Lauthcommon/af;->a:Lauthcommon/ae;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lauthcommon/af;->a:Lauthcommon/ae;

    const v1, 0x18ed6

    invoke-virtual {v0, v1}, Lauthcommon/ae;->a(I)V

    iget-object v0, p0, Lauthcommon/af;->a:Lauthcommon/ae;

    const/4 v1, 0x0

    iput-object v1, v0, Lauthcommon/ae;->e:Lauthcommon/ae$a;

    return-void
.end method
