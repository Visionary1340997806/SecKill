.class final Lcn/domob/android/ads/co;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcn/domob/android/ads/bp;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/bp;)V
    .locals 0

    iput-object p1, p0, Lcn/domob/android/ads/co;->a:Lcn/domob/android/ads/bp;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/domob/android/ads/co;->a:Lcn/domob/android/ads/bp;

    invoke-static {v0}, Lcn/domob/android/ads/bp;->a(Lcn/domob/android/ads/bp;)V

    return-void
.end method
