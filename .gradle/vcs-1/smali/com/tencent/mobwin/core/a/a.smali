.class final Lcom/tencent/mobwin/core/a/a;
.super Ljava/lang/Thread;


# instance fields
.field private final synthetic a:Lcom/tencent/mobwin/core/a/b;


# direct methods
.method constructor <init>(Lcom/tencent/mobwin/core/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mobwin/core/a/a;->a:Lcom/tencent/mobwin/core/a/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mobwin/core/a/a;->a:Lcom/tencent/mobwin/core/a/b;

    invoke-virtual {v0}, Lcom/tencent/mobwin/core/a/b;->a()V

    return-void
.end method
