.class final Lauthcommon/be;
.super Ljava/lang/Object;
.source "SmsHttp.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lauthcommon/bc$a;


# direct methods
.method constructor <init>(Lauthcommon/bc$a;)V
    .locals 0

    iput-object p1, p0, Lauthcommon/be;->a:Lauthcommon/bc$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lauthcommon/be;->a:Lauthcommon/bc$a;

    iget-object v0, v0, Lauthcommon/bc$a;->a:Lauthcommon/bc;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lauthcommon/bc;->m:J

    iget-object v0, p0, Lauthcommon/be;->a:Lauthcommon/bc$a;

    iget-object v0, v0, Lauthcommon/bc$a;->a:Lauthcommon/bc;

    iget-object v1, p0, Lauthcommon/be;->a:Lauthcommon/bc$a;

    iget-object v1, v1, Lauthcommon/bc$a;->a:Lauthcommon/bc;

    iget-object v1, v1, Lauthcommon/bc;->l:Lauthcommon/ae$a;

    invoke-static {v0, v1}, Lauthcommon/bc;->a(Lauthcommon/bc;Lauthcommon/ae$a;)V

    return-void
.end method
